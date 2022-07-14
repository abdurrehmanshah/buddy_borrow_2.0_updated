// ignore_for_file: avoid_print, unnecessary_new, library_prefixes

import 'dart:developer' as devlog;
import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newbuddyborrow/core/models/loan_models/personal_loan_model.dart';
import '../enums/process_status.dart';
import '../models/user_model.dart';
import '../others/response_status.dart';
import 'package:path/path.dart' as Path;

class DbService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // // Method to add User Data to Collections
  Future<ResponseStatus> addUserData({required UserModel user}) async {
    ResponseStatus status =
        ResponseStatus(status: ProcessStatus.loading, value: {});

    try {
      await _firestore
          .collection('users')
          .doc(user.dbId)
          .set(user.toFirebase())
          .whenComplete(() {
        status.status = ProcessStatus.compeleted;
      });
    } on PlatformException catch (e) {
      status.status = ProcessStatus.failed;
      status.value = {
        'error': e.message,
      };
    }
    return status;
  }

  // // Method to add User Image to Storage
  Future<String> uploadImageToStorage(
      String userName, XFile? image, String email) async {
    late String retVal;
    log('Inside DB Function ');

    Reference storageReference = FirebaseStorage.instance
        .ref('Users/$email/$userName/${Path.basename(image!.path)}');
    log('Inside DB2 Function ');
    log('Storage $storageReference');
    try {
      log('In Here');
      await storageReference.putFile(File(image.path)).then((res) async {
        log('Im Here');
        await res.ref.getDownloadURL().then((fileURL) async {
          log('Im Null Because of DB $fileURL');
          retVal = fileURL;
        });
      }); //  Image Upload code

    } on PlatformException catch (e) {
      log(e.toString());
      retVal = e.toString();

      // return null;
    }
    return retVal;
  }

  Future<ResponseStatus> checkEmailExists(String email) async {
    ResponseStatus status =
        ResponseStatus(status: ProcessStatus.loading, value: {});
    try {
      final ref = await _firestore
          .collection('users')
          .where('email', isEqualTo: email)
          .get();
      if (ref.docs.isNotEmpty) {
        devlog.log('Not empty');
        status.value = {'data': true};
        status.status = ProcessStatus.compeleted;
      } else {
        devlog.log(' empty');

        status.value = {'data': false};
        status.status = ProcessStatus.compeleted;
      }
    } catch (e) {
      status.value = {'error': "Company Doesn't Exists or ${e.toString()}"};
      status.status = ProcessStatus.failed;
    }
    return status;
  }

  /// [GetUserData] ///
  Future<ResponseStatus> getUserData({required String dbId}) async {
    ResponseStatus status =
        ResponseStatus(value: {}, status: ProcessStatus.loading);
    UserModel user = UserModel();

    try {
      await _firestore.collection('users').doc(dbId).get().then((value) {
        user = UserModel.fromFirebase(firebase: value);
      });

      status.value = {'data': user};
      status.status = ProcessStatus.compeleted;
    } catch (e) {
      status.value = {'error': e.toString()};
      status.status = ProcessStatus.failed;
    }

    return status;
  }

  Future<ProcessStatus> createPersonalLoan(
      {required PersonalLoanModel personalLoan, required String dbId}) async {
    ProcessStatus status = ProcessStatus.loading;
    try {
      await _firestore
          .collection('users')
          .doc(dbId)
          .collection('personal_loans')
          .add(personalLoan.toFirebase())
          .whenComplete(() => status = ProcessStatus.compeleted);
    } catch (e) {
      devlog.log(e.toString());
      status = ProcessStatus.failed;
    }
    return status;
  }
}
