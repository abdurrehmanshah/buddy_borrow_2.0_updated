import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.06,
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        color: kblueColor,
        borderRadius: BorderRadius.circular(Get.height * 0.03),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
