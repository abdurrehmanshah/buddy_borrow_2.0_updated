import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/About_Us/about_us.dart';
import 'package:newbuddyborrow/screens/editprofile/edit_profile.dart';
import 'package:newbuddyborrow/screens/securityquestions/security_questions.dart';
import 'package:newbuddyborrow/screens/tabbarpage/tapbar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(width: Get.width * 0.25),
                const Text(
                  'My Profile',
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
              height: Get.height * 0.22,
              width: Get.height * 0.22,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/ellipse.png',
                      height: Get.height * 0.22,
                      color: Colors.green,
                    ),
                  ),
                  Transform.rotate(
                    angle: pi,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/ellipse.png',
                        height: Get.height * 0.22,
                        color: kblueColor,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/MaskGroup13.png',
                      height: Get.height * 0.2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            InkWell(
              onTap: () {
                Get.to(const EditProfle());
              },
              child: MyProfileContainer(
                  icon: Icons.person,
                  text: 'Edit Account',
                  color: Colors.black),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            InkWell(
              onTap: () {
                Get.to(const SecurityQuestions());
              },
              child: MyProfileContainer(
                  icon: Icons.question_mark_rounded,
                  text: 'Security Question',
                  color: Colors.blue),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            InkWell(
              onTap: () {
                Get.to(const TapbarPage());
              },
              child: MyProfileContainer(
                  icon: Icons.share,
                  text: 'Sharing Buddy Borrow',
                  color: kGreenColor),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            InkWell(
              onTap: () {
                Get.to(const AboutUs());
              },
              child: MyProfileContainer(
                  icon: Icons.share, text: 'About Us', color: kblueColor),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            InkWell(
              onTap: () {},
              child: MyProfileContainer(
                  icon: Icons.share, text: 'Logout', color: Colors.red),
            ),
            SizedBox(
              height: Get.height * 0.15,
            ),
            const Text(
              'Version: 1.0',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ))),
    );
  }
}

// ignore: must_be_immutable
class MyProfileContainer extends StatelessWidget {
  MyProfileContainer({
    required this.icon,
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);
  String text;
  IconData icon;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: Get.width * 0.04),
          Container(
              height: Get.height * 0.05,
              width: Get.height * 0.05,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green.shade50),
              child: Icon(
                icon,
                size: 25,
                color: color,
              )),
          SizedBox(
            width: Get.width * 0.05,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios),
          SizedBox(width: Get.width * 0.04),
        ],
      ),
    );
  }
}
