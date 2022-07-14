// ignore_for_file: curly_braces_in_flow_control_structures, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/screens/registration/security_question1.dart';

import '../../controllers/registration_controller.dart';
import '../../core/constants/constants.dart';
import '../../mobileWidgets/custom_button.dart';
import '../../mobileWidgets/custom_textfield.dart';

class Signup2 extends StatelessWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SingupControrller controrller = Get.put(SingupControrller());
    final GlobalKey<FormState> _key = GlobalKey();

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
                emailController: controrller.emailContorller,
                text: "Email",
                isObsecure: false,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your email address';
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(val)) {
                    return 'Please provide valid email address';
                  } else
                    return null;
                },
                icon: const Icon(Icons.person),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.addressContorller,
                text: "Address",
                isObsecure: false,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your address';
                  } else
                    return null;
                },
                icon: const Icon(Icons.person),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.postContorller,
                text: "Postcode",
                isObsecure: false,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please provide your postal code';
                  } else
                    return null;
                },
                icon: const Icon(Icons.person),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomTextField(
                emailController: controrller.passwordContorller,
                text: "Password",
                isObsecure: true,
                validator: (val) {
                  if (val!.isEmpty || val.length < 6) {
                    return 'Please provide valid password with 6+ characters';
                  } else
                    return null;
                },
                icon: const Icon(Icons.person),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              InkWell(
                onTap: () {
                  if (_key.currentState!.validate()) {
                    Get.to(const SecurityQuestion1());
                  }
                },
                child: const CustomButton(text: "CONTINUE"),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),

              // const Spacer(),
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
