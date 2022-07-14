import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class EditProfileTextField extends StatelessWidget {
  EditProfileTextField({
    required this.hint,
    required this.icon,
    required this.controller,
    Key? key,
  }) : super(key: key);
  String hint;
  IconData icon;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: Get.width * 0.85,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width * 0.04,
            ),
            Icon(
              icon,
              size: 26,
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            SizedBox(
              width: Get.width * 0.65,
              child: TextField(
                  controller: controller,
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
