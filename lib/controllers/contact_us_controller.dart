import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ContactUsController extends GetxController {
  late TextEditingController textController;
  late TextEditingController emailController;
  late TextEditingController messageController;

  @override
  void onInit() {
    textController = TextEditingController();
    emailController = TextEditingController();
    messageController = TextEditingController();

    super.onInit();
  }
}
