import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/registration_controller.dart';
import 'package:newbuddyborrow/screens/registration/upload_photo.dart';

import '../../core/constants/constants.dart';
import '../../core/others/notification_snackbar.dart';
import '../../mobileWidgets/custom_button.dart';

class SecurityQuestion3 extends StatelessWidget {
  const SecurityQuestion3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SingupControrller controrller = Get.find<SingupControrller>();
    return Scaffold(
      body: SingleChildScrollView(
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
            Container(
              height: Get.height * 0.25,
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: Get.height * 0.05,
                        width: Get.height * 0.05,
                        decoration: BoxDecoration(
                          color: kblueColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(color: kWhiteColor),
                          ),
                        ),
                      ),
                      const Text(
                        "Your Birthday place?",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "Answer",
                    style: TextStyle(
                      color: kGreenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: Get.height * 0.11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey.shade100,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextField(
                          maxLines: 3,
                          minLines: 3,
                          controller: controrller.securityQuestion3,
                          decoration: const InputDecoration.collapsed(
                            hintText: "Type here...",
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            InkWell(
              onTap: () {
                if (controrller.securityQuestion3.text.isEmpty) {
                  kNotificationSnackbar(
                      'Error', 'Please answer this question', null);
                } else {
                  Get.to(const UploadPhoto());
                }
              },
              child: const CustomButton(text: "CONTINUE"),
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
    );
  }
}
