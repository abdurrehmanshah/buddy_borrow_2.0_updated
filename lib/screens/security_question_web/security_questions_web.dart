import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/core/others/base_view_widget.dart';
import 'package:newbuddyborrow/screens/login/login_web.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';
import 'package:newbuddyborrow/webWidgets/web_textfield.dart';

class SecurityQuestionsWeb extends StatefulWidget {
  const SecurityQuestionsWeb({super.key});

  @override
  State<SecurityQuestionsWeb> createState() => _SecurityQuestionsWebState();
}

class _SecurityQuestionsWebState extends State<SecurityQuestionsWeb> {
  TextEditingController _securityonecontroller = TextEditingController();
  TextEditingController _securitytwocontroller = TextEditingController();

  @override
  void initState() {
    _securityonecontroller = TextEditingController();
    _securitytwocontroller = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _securityonecontroller.dispose();
    _securitytwocontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.09,
              width: Get.width,
              color: kblueColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.1,
                      child: Image.asset(
                        'assets/Borrow.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(const LoginWeb());
                      },
                      child: Container(
                          width: Get.width * 0.09,
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    Container(
                        width: Get.width * 0.09,
                        height: Get.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white30,
                        ),
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Icon(
                      Icons.notifications,
                      color: kWhiteColor,
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Icon(
                      Icons.account_circle_rounded,
                      color: kWhiteColor,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(
                              width: Get.width * 0.01,
                            ),
                            const Text(
                              'BACK',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      SizedBox(
                        width: Get.width * 0.25,
                        child: Image.asset(
                          'assets/security.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.06),
                  SizedBox(
                    width: Get.width * 0.55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.1),
                        Text(
                          'SECURITY QUESTIONS',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Text(
                          'Add these question for more security',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: kBlackColor),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        SecurityQuestionWeb(
                            '1', 'what is your 1st school name'),
                        SizedBox(height: Get.height * 0.02),
                        SecurityQuestionWeb('2', 'Who is your best friend'),
                        SizedBox(height: Get.height * 0.03),
                        CustomButtonWeb(text: 'DONE')
                      ],
                    ),
                  ),
                ],
              ),
            )),
            const BottomGreenContainer(),
          ],
        ),
      )),
    );
  }
}

// ignore: must_be_immutable
class SecurityQuestionWeb extends StatelessWidget {
  SecurityQuestionWeb(this.number, this.question, {super.key});
  String number;
  String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: Get.height * 0.23,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(
          top: Get.height * 0.01,
          left: Get.height * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * 0.04,
                  width: Get.height * 0.04,
                  decoration: BoxDecoration(
                    color: kblueColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      number,
                      style: TextStyle(
                          fontSize: 16,
                          color: kWhiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.01,
                ),
                Text(
                  question,
                  style: TextStyle(
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.04),
              child: Text(
                'Answer',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              width: Get.width * 0.35,
              height: Get.height * 0.12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kWhiteColor,
                  border: Border.all(
                    width: 2,
                    color: Colors.black12,
                  )),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Get.height * 0.02, right: Get.height * 0.02),
                  child: TextField(
                      maxLines: 3,
                      // controller: controller,
                      // obscureText: isObscure,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: kGrey,
                        ),
                        border: InputBorder.none,
                        hintText: 'type here....',
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
