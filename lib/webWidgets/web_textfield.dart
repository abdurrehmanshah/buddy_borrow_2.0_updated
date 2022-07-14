import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

// ignore: must_be_immutable
class LoginTextFieldWeb extends StatelessWidget {
  LoginTextFieldWeb({
    required this.hint,
    required this.icon,
    required this.controller,
    required this.isObscure,
    Key? key,
  }) : super(key: key);
  String hint;
  IconData icon;
  bool isObscure;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: Get.width * 0.2,
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: kWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width * 0.01,
            ),
            Icon(
              icon,
              size: 26,
            ),
            SizedBox(
              width: Get.width * 0.01,
            ),
            SizedBox(
              width: Get.width * 0.15,
              child: TextField(
                  controller: controller,
                  obscureText: isObscure,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
