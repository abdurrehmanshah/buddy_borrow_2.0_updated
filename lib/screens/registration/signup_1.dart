// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:newbuddyborrow/controllers/registration_controller.dart';
import 'package:newbuddyborrow/core/others/notification_snackbar.dart';
import 'package:newbuddyborrow/screens/login/login.dart';
import 'package:newbuddyborrow/screens/registration/signup_2.dart';

import '../../core/constants/constants.dart';
import '../../mobileWidgets/custom_button.dart';
import '../../mobileWidgets/custom_textfield.dart';

class Signup1 extends StatefulWidget {
  const Signup1({Key? key}) : super(key: key);

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  SingupControrller controrller = Get.put(SingupControrller());
  bool _selectedDateFirst = false;
  DateTime selectedDate = DateTime.now();
  final GlobalKey<FormState> _key = GlobalKey();
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1960, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _selectedDateFirst = true;
      });
      controrller.dob.text = DateFormat.yMMMd().format(selectedDate);
      log(controrller.dob.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/bgimages/upercontainer.png",
                fit: BoxFit.contain,
              ),
              Image.asset(
                "assets/BBLogo.png",
                width: Get.width * 0.3,
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                "SIGN UP",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.firstNameContorller,
                text: "First Name",
                isObsecure: false,
                icon: const Icon(Icons.person),
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your first name';
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.middleName,
                text: "Last Name",
                isObsecure: false,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your lastname';
                  } else
                    return null;
                },
                icon: const Icon(Icons.person),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.surNameContorller,
                text: "Surname",
                isObsecure: false,
                icon: const Icon(Icons.person),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                height: Get.height * 0.06,
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
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
                        child: const Icon(Icons.calendar_month),
                      ),
                      SizedBox(
                        width: Get.width * 0.04,
                      ),
                      Text(
                        DateFormat.yMMMd().format(selectedDate),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () async {
                            await selectDate(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: kWhiteColor,
                            child: Icon(
                              Icons.calendar_month,
                              color: kblueColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.phoneContorller,
                text: "Phone Number (Verified)",
                isObsecure: false,
                icon: const Icon(Icons.phone_android_sharp),
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your phone number';
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  log('Controller: ${controrller.dob.text}');

                  if (_key.currentState!.validate()) {
                    if (!_selectedDateFirst) {
                      log('Here');

                      kNotificationSnackbar(
                          'Error', 'Pick your Date of Birth', null);
                    } else {
                      Get.to(() => const Signup2());
                    }
                  }
                },
                child: const CustomButton(
                  text: "CONTINUE",
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account? ",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const Login());
                    },
                    child: Text(
                      "  SIGN IN",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/bgimages/down.png",
                width: Get.width,
                height: Get.height * 0.17,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
