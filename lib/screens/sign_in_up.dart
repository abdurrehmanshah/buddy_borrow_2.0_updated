import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/screens/login/login.dart';
import 'package:newbuddyborrow/screens/registration/signup_1.dart';

import '../core/constants/constants.dart';
import '../mobileWidgets/custom_button.dart';

class SignInOrUp extends StatelessWidget {
  const SignInOrUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
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
                "Welcome",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
              InkWell(
                onTap: () {
                  Get.to(const Login());
                },
                child: const CustomButton(
                  text: "SIGN IN",
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Get.to(const Signup1());
                },
                child: const CustomButton(
                  text: "SIGN UP",
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              const Spacer(),
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
