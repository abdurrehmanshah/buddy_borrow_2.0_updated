import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import '../enums/process_status.dart';
import '../models/user_model.dart';
import '../others/base_view_widget.dart';
import '../others/response_status.dart';
import 'db_service.dart';
import 'local_db.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<ProcessStatus> sendResetEmail({required String email}) async {
    ProcessStatus status = ProcessStatus.loading;

    try {
      await _auth
          .sendPasswordResetEmail(email: email)
          .whenComplete(() => status = ProcessStatus.compeleted);
    } catch (e) {
      status = ProcessStatus.failed;
    }

    return status;
  }

  /// [UserSignUpMethods] ///
  Future<ResponseStatus> registerUser({required UserModel? ourUser}) async {
    ResponseStatus status =
        ResponseStatus(status: ProcessStatus.loading, value: {});

    try {
      await _auth
          .createUserWithEmailAndPassword(
              email: ourUser!.email.toString(),
              password: ourUser.password.toString())
          .then((user) async {
        ourUser.dbId = user.user!.uid;
// T
        await DbService().addUserData(user: ourUser).then((value) {
          if (value.status == ProcessStatus.compeleted) {
            status.status = ProcessStatus.compeleted;
            status.value = {
              'dbId': user.user!.uid,
              'response': 'Success',
            };
          } else if (value.status == ProcessStatus.failed) {
            status.status = ProcessStatus.failed;
            log('Im Here and Catched Db Add Function Error');

            status.value = {
              'response': value.value['error'],
            };
          }
        });
      });
    } on PlatformException catch (e) {
      log('Im Here and Catched Platform Exception');

      status.status = ProcessStatus.failed;

      status.value = {
        'response': e.message,
      };
    } on FirebaseAuthException catch (k) {
      log('Im Here and Catched Firebase Exception');
      status.status = ProcessStatus.failed;

      status.value = {
        'response': k.message,
      };
    }
    return status;
  }

  /// [UserSignIn] ///
  Future<ResponseStatus> signInUser({required email, required password}) async {
    ResponseStatus status =
        ResponseStatus(status: ProcessStatus.loading, value: {});
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((user) {
        status.status = ProcessStatus.compeleted;
        status.value = {
          'dbId': user.user!.uid,
          'response': 'Success',
        };
      });
    } on PlatformException catch (e) {
      log('Im Here and Catched Platform Exception: $e');

      status.status = ProcessStatus.failed;

      status.value = {
        'response': e.message,
      };
    } on FirebaseAuthException catch (k) {
      log('Im Here and Catched Firebase Exception: $k');
      status.status = ProcessStatus.failed;

      status.value = {
        'response': k.message,
      };
    }
    return status;
  }

  Future<void> signOut() async {
    await _auth.signOut().whenComplete(() async {
      await LocalDb.removeDbValue();
    });
  }
}
