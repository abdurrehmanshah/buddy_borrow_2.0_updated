import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class CustomButtonWeb extends StatefulWidget {
  const CustomButtonWeb({
    required this.text,
    required this.widdth,
    Key? key,
  }) : super(key: key);

  final String text;
  final double widdth;
  @override
  State<CustomButtonWeb> createState() => _CustomButtonWebState();
}

class _CustomButtonWebState extends State<CustomButtonWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * widget.widdth,
      decoration: BoxDecoration(
        color: kblueColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 16.0, color: kWhiteColor, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
