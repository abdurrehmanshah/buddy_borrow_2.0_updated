import 'dart:developer';

import 'package:get/get.dart';

import '../constants/constants.dart';

SnackbarController kNotificationSnackbar(
    String heading, String description, Duration? duration) {
  log('Showing notification');

  return Get.snackbar(
    heading,
    description,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: kGreenColor,
    colorText: kBlackColor,
    duration: duration ?? const Duration(seconds: 3),
  );
}
