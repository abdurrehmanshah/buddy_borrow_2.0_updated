import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/constants.dart';
import '../mobileWidgets/custom_button.dart';
import '../mobileWidgets/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController emailController;
  @override
  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: Get.height * 1,
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
                  "Forgot Password",
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                CustomTextField(
                  emailController: emailController,
                  text: "Email",
                  isObsecure: false,
                  icon: const Icon(Icons.person),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                InkWell(
                  onTap: () {},
                  child: const CustomButton(text: "SUBMIT"),
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
      ),
    );
  }
}
