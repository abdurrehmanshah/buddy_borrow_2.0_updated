import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
              child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: Get.width * 0.04),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: kBlackColor,
                      size: 30,
                    )),
                SizedBox(width: Get.width * 0.26),
                const Text(
                  'About Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            SizedBox(
              height: Get.height * 0.13,
              child: Image.asset(
                'assets/BBLogo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            SizedBox(
                width: Get.width * 0.85,
                child: const Text(
                  'dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do cons\n\ntructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipigdolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor sit amet to do constructor adscipigd adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig dolor ipsum color sit amet to do constructor adscipig',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
          ],
        ),
      ))),
    );
  }
}
