// ignore_for_file: prefer_final_fields

import 'dart:developer';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newbuddyborrow/core/others/notification_snackbar.dart';
import 'package:newbuddyborrow/core/services/db_service.dart';
import 'dart:io';

import '../core/constants/globals.dart';
import '../core/enums/process_status.dart';
import '../core/models/user_model.dart';
import '../core/services/auth_service.dart';
import '../core/services/local_db.dart';
import '../screens/splash.dart';

class SingupControrller extends GetxController {
  late TextEditingController firstNameContorller;
  late TextEditingController middleName;
  late TextEditingController surNameContorller;
  String? dateName;
  late TextEditingController phoneContorller;
  late TextEditingController emailContorller;

  late TextEditingController passwordContorller;
  late TextEditingController addressContorller;
  late TextEditingController postContorller;

  late TextEditingController securityQuestion1;
  late TextEditingController securityQuestion2;
  late TextEditingController securityQuestion3;

  late TextEditingController dob;
  UserModel _userModel = UserModel();

  File? image;

  @override
  void onInit() {
    firstNameContorller = TextEditingController();
    middleName = TextEditingController();
    surNameContorller = TextEditingController();
    emailContorller = TextEditingController();
    passwordContorller = TextEditingController();
    phoneContorller = TextEditingController();
    postContorller = TextEditingController();
    dob = TextEditingController();
    addressContorller = TextEditingController();
    securityQuestion1 = TextEditingController();
    securityQuestion2 = TextEditingController();
    securityQuestion3 = TextEditingController();

    dob = TextEditingController();
    super.onInit();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  resetIsLoading(bool state) {
    _isLoading = state;
    update();
  }

  bool _isSending = false;
  bool get isSending => _isSending;

  resetIsSending(bool state) {
    _isSending = state;
  }

  resetPassword({required String email, context}) async {
    resetIsSending(true);
    await AuthService().sendResetEmail(email: email).then((value) {
      if (value == ProcessStatus.compeleted) {
        resetIsSending(false);

        // Navigator.pushAndRemoveUntil(
        //     context,
        //  MaterialPageRoute(builder: (context) => screen),
        //     (route) => false);

      } else if (value == ProcessStatus.failed) {
        resetIsSending(false);

        snackbarKey.currentState!.showSnackBar(const SnackBar(
          content: Text(
            'Error: Failed to Send Reset Password Email',
          ),
        ));
      }
    });
  }

  signUpUser() async {
    resetIsLoading(true);

    _userModel.email = emailContorller.text;
    _userModel.password = passwordContorller.text;
    _userModel.address = addressContorller.text;
    _userModel.securityQuestion1 = securityQuestion1.text;
    _userModel.securityQuestion2 = securityQuestion2.text;
    _userModel.securityQuestion3 = securityQuestion3.text;

    _userModel.dateOfBirth = dob.text;
    _userModel.firstName = firstNameContorller.text;
    _userModel.middleName = middleName.text;

    _userModel.surname = surNameContorller.text;
    _userModel.phoneNumber = phoneContorller.text;
    _userModel.postCode = postContorller.text;

    await DbService()
        .uploadImageToStorage('${_userModel.firstName}${_userModel.surname}',
            _profilePhoto, _userModel.email.toString())
        .then((value) async {
      if (value.isNotEmpty) {
        _userModel.userImageUrl = value;
        await AuthService()
            .registerUser(ourUser: _userModel)
            .then((value) async {
          if (value.status == ProcessStatus.compeleted) {
            final dbId = value.value['dbId'];
            log(dbId);

            await LocalDb.setUserRecords(
              dbId: dbId,
              email: _userModel.email.toString(),
            ).whenComplete(() {
              resetIsLoading(false);
              Get.offAll(() => const Splash());
            });
          } else if (value.status == ProcessStatus.failed) {
            final response = value.value['response'];
            resetIsLoading(false);
            kNotificationSnackbar('Error', response, null);
          }
        });
      } else {
        resetIsLoading(false);
        kNotificationSnackbar('Error', 'Failed to Upload Image', null);
      }
    });
  }

  signInUser(
      {required String email,
      required String password,
      required BuildContext context}) async {
    resetIsLoading(true);

    await AuthService()
        .signInUser(email: email, password: password)
        .then((value) async {
      if (value.status == ProcessStatus.compeleted) {
        final dbId = value.value['dbId'];
        log(dbId);
        await LocalDb.setUserRecords(
          dbId: dbId,
          email: email,
        ).whenComplete(() {
          resetIsLoading(false);
        });
      } else if (value.status == ProcessStatus.failed) {
        final response = value.value['response'];
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'Error: $response',
          ),
        ));

        resetIsLoading(false);
      }
    });
  }

  XFile? _profilePhoto;
  XFile? get profilePhoto => _profilePhoto;

  final ImagePicker _picker = ImagePicker();

  setNull() {
    _profilePhoto = null;
  }

  _pickImageFromGallery() async {
    _profilePhoto =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 20);
    update();
  }

  _pickImageFromCamera() async {
    _profilePhoto =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 20);
    update();
  }

  showProfilePhotoUploadDialog() {
    Get.bottomSheet(
      SafeArea(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  _pickImageFromGallery();
                  Get.back();
                }),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('Camera'),
              onTap: () {
                _pickImageFromCamera();
                Get.back();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
  // pickImage() async {
  //   image = ImagePicker().pickImage(source: ImageSource.gallery) as File?;
  // }

  // Future<String> uploadPic() async {
  //   firebase_storage.FirebaseStorage _storage =
  //       firebase_storage.FirebaseStorage.instance;
  //   firebase_storage.Reference reference = _storage.ref().child(
  //         DateTime.now().toString(),
  //       );
  //   firebase_storage.UploadTask uploadTask;
  //   // if (image != null) {
  //   uploadTask = reference.putFile(
  //     File(image!.path),
  //   );
  //   // }
  //   firebase_storage.TaskSnapshot taskSnapshot =
  //       await uploadTask.whenComplete(() => {});
  //   String imageUrl = await taskSnapshot.ref.getDownloadURL();
  //   return imageUrl;
  // }

  // finalSignup() async {
  //   final String imageUrl = await uploadPic();
  //   String? userId;
  //   FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(
  //     email: emailContorller.text,
  //     password: passwordContorller.text,
  //   )
  //       .then((user) {
  //     userId = FirebaseAuth.instance.currentUser!.uid;
  //     FirebaseAuth.instance.signOut();
  //   });
  //   FirebaseFirestore.instance.collection("users").add({
  //     "firstname": firstNameContorller.text.trim(),
  //     "lastname": lastNameContorller.text.trim(),
  //     "surname": surNameContorller.text.trim(),
  //     "userid": userId,
  //     "date": DateTime.now().toString(),
  //     "phone": phoneContorller.text.trim(),
  //     "email": emailContorller.text.trim(),
  //     "postcode": postContorller.text.trim(),
  //     "schoolName": securitySchoolNameContorller.text,
  //     "friendName": securityFriendNameContorller.text,
  //     "birthdayPlaceName": birthdayPlaceContorller.text,
  //     "imageUrl": imageUrl,
  //   });
  //   Get.to(const Signin());
  // }
}
