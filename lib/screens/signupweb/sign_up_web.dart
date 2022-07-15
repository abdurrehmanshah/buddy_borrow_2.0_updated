import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/login/login_web.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';
import 'package:newbuddyborrow/webWidgets/web_textfield.dart';

class SignUpWeb extends StatefulWidget {
  const SignUpWeb({super.key});

  @override
  State<SignUpWeb> createState() => _SignUpWebState();
}

class _SignUpWebState extends State<SignUpWeb> {
  TextEditingController _firstnamecontroller = TextEditingController();
  TextEditingController _middlecontroller = TextEditingController();
  TextEditingController _surnamecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _postcodecontroller = TextEditingController();
  TextEditingController _emmailcontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  @override
  void initState() {
    _firstnamecontroller = TextEditingController();
    _middlecontroller = TextEditingController();
    _surnamecontroller = TextEditingController();
    _phonecontroller = TextEditingController();
    _postcodecontroller = TextEditingController();
    _emmailcontroller = TextEditingController();
    _addresscontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstnamecontroller.dispose();
    _middlecontroller.dispose();
    _surnamecontroller.dispose();
    _phonecontroller.dispose();
    _postcodecontroller.dispose();
    _emmailcontroller.dispose();
    _addresscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime selecteddDate = DateTime.now();

    Future<void> selectdDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selecteddDate,
        firstDate: DateTime(2015, 8, 3),
        lastDate: DateTime(2101, 3, 5),
      );

      if (picked != null && picked != selecteddDate) {
        setState(() {
          selecteddDate = picked;
        });
      }
    }

    bool valuefirst = false;
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
                        height: Get.height * 0.4,
                        child: Image.asset(
                          'assets/Login.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.06),
                  SizedBox(
                    width: Get.width * 0.55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.height * 0.12),
                            Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor),
                            ),
                            SizedBox(height: Get.height * 0.01),
                            Text(
                              'Personal Details',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: kBlackColor),
                            ),
                            SizedBox(height: Get.height * 0.02),
                            LoginTextFieldWeb(
                              hint: 'first name',
                              icon: Icons.person,
                              controller: _firstnamecontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'surname',
                              icon: Icons.person,
                              controller: _surnamecontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'phone number (Verified)',
                              icon: Icons.phone_android_rounded,
                              controller: _phonecontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'Address',
                              icon: Icons.location_pin,
                              controller: _addresscontroller,
                              isObscure: false,
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Get.height * 0.05,
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Colors.white,
                                    value: valuefirst,
                                    onChanged: (value) {
                                      setState(() {
                                        valuefirst = value!;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'agree to buddy borrow\'s ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kBlackColor,
                                  ),
                                ),
                                Text(
                                  'TERMS ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kblueColor,
                                  ),
                                ),
                                Text(
                                  '&',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kBlackColor,
                                  ),
                                ),
                                Text(
                                  ' CONDITIONS',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kblueColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            const CustomButtonWeb(
                              text: 'CONTINUE',
                              widdth: 0.25,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: Get.height * 0.027,
                            ),
                            SizedBox(
                              height: Get.height * 0.17,
                              width: Get.height * 0.17,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/ellipse.png',
                                      height: Get.height * 0.17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: pi,
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        'assets/ellipse.png',
                                        height: Get.height * 0.17,
                                        color: kblueColor,
                                      ),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: Get.height * 0.12,
                                          width: Get.height * 0.12,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kblueColor),
                                          child: Center(
                                              child: Icon(
                                            Icons.camera_alt,
                                            size: 30,
                                            color: kWhiteColor,
                                          )),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Text(
                              'Upload Image',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: kBlackColor),
                            ),
                            SizedBox(height: Get.height * 0.01),
                            LoginTextFieldWeb(
                              hint: 'middle',
                              icon: Icons.person,
                              controller: _middlecontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
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
                                    const Icon(
                                      Icons.calendar_month,
                                      size: 26,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.01,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.13,
                                      child: Text(
                                        '${selecteddDate.day}-${selecteddDate.month}-${selecteddDate.year}.',
                                        style: TextStyle(
                                            fontSize: 16, color: kBlackColor),
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {
                                        selectdDate(context);
                                      },
                                      child: Icon(
                                        Icons.calendar_month_outlined,
                                        size: 26,
                                        color: kGreenColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.01,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'Email Address(Verified)',
                              icon: Icons.phone_android_rounded,
                              controller: _emmailcontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'Post code',
                              icon: Icons.location_pin,
                              controller: _postcodecontroller,
                              isObscure: false,
                            ),
                          ],
                        ),
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
