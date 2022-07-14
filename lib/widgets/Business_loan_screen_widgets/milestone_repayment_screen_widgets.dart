import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constants.dart';

// For percentage in milestone_repayment screen

// ignore: must_be_immutable
class PercentageTextField extends StatelessWidget {
  PercentageTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.83,
      decoration: BoxDecoration(
        color: scaffoldcolor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green.shade100,
              child: const Icon(Icons.percent),
            ),
            SizedBox(
              width: Get.width * 0.04,
            ),
            SizedBox(
              width: Get.width * 0.6,
              child: TextFormField(
                controller: controller,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'percentage',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DescriptionTextField extends StatefulWidget {
  TextEditingController controller = TextEditingController();

  DescriptionTextField({
    Key? key,
    required this.height,
    required this.controller,
    required this.width,
  }) : super(key: key);

  final int height;
  final int width;

  @override
  State<DescriptionTextField> createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height / 8.5,
      width: widget.width / 0.357,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: scaffoldcolor, borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 20),
        child: TextField(
          decoration: const InputDecoration.collapsed(hintText: 'Description'),
          controller: widget.controller,
        ),
      ),
    );
  }
}
