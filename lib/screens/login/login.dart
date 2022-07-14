// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/login_controller.dart';
import 'package:newbuddyborrow/mobileWidgets/custom_button.dart';
import 'package:newbuddyborrow/screens/forgot_password.dart';
import 'package:newbuddyborrow/screens/registration/signup_1.dart';

import '../../core/constants/constants.dart';
import '../../mobileWidgets/custom_textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emailController;

  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _key = GlobalKey();

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
                "SIGN IN",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 25.0,
                ),
              ),
              Text(
                "Sign in your account",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: emailController,
                text: "Email",
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your address';
                  } else
                    return null;
                },
                isObsecure: false,
                icon: const Icon(Icons.email),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: passwordController,
                text: "Password",
                validator: (val) {
                  if (val!.isEmpty || val.length < 6) {
                    return 'Please provide valid password with 6+ characters';
                  } else
                    return null;
                },
                isObsecure: true,
                icon: const Icon(Icons.lock),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.1, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const ForgotPassword());
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              GetBuilder<LoginController>(
                  init: LoginController(),
                  builder: (controller) {
                    return controller.isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                            color: kGreenColor,
                          ))
                        : InkWell(
                            onTap: () {
                              if (_key.currentState!.validate()) {
                                controller.signInUser(
                                    email: emailController.text,
                                    password: passwordController.text);
                              }
                            },
                            child: const CustomButton(
                              text: "SIGN IN",
                            ),
                          );
                  }),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create new account ",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const Signup1());
                    },
                    child: Text(
                      "  SIGN UP",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.04,
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
