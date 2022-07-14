import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class BottomGreenContainer extends StatelessWidget {
  const BottomGreenContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.09,
      width: Get.width,
      color: kGreenColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 16,
                color: kWhiteColor,
              ),
            ),
            Text(
              'About',
              style: TextStyle(
                fontSize: 16,
                color: kWhiteColor,
              ),
            ),
            Text(
              'Terms of Use',
              style: TextStyle(
                fontSize: 16,
                color: kWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
