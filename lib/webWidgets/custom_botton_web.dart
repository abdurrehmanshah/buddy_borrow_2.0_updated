import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class CustomButtonWeb extends StatefulWidget {
  const CustomButtonWeb({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  State<CustomButtonWeb> createState() => _CustomButtonWebState();
}

class _CustomButtonWebState extends State<CustomButtonWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.25,
      decoration: BoxDecoration(
        color: kblueColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 18.0,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
