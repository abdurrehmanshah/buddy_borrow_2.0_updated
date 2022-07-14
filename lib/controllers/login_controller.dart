import 'package:get/get.dart';
import 'package:newbuddyborrow/core/others/notification_snackbar.dart';

import '../core/enums/process_status.dart';
import '../core/others/base_view_widget.dart';
import '../core/services/auth_service.dart';
import '../core/services/local_db.dart';
import '../screens/splash.dart';

class LoginController extends GetxController {
  late bool _isLoading;
  bool get isLoading => _isLoading;

  @override
  void onInit() {
    _isLoading = false;
    super.onInit();
  }

  resetIsLoading(bool state) {
    _isLoading = state;
    update();
  }

  signInUser({
    required String email,
    required String password,
  }) async {
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
          Get.offAll(() => const Splash());
        });
      } else if (value.status == ProcessStatus.failed) {
        final response = value.value['response'];
        kNotificationSnackbar('Error', response, null);
        resetIsLoading(false);
      }
    });
  }
}
