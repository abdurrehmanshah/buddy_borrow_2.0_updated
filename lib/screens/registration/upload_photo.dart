import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/others/notification_snackbar.dart';
import '../../controllers/registration_controller.dart';
import '../../core/constants/constants.dart';
import '../../mobileWidgets/custom_button.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
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
            GetBuilder<SingupControrller>(
                init: SingupControrller(),
                builder: (value) {
                  return InkWell(
                    onTap: () {
                      value.showProfilePhotoUploadDialog();
                    },
                    child: value.profilePhoto != null
                        ? CircleAvatar(
                            radius: 80.0,
                            backgroundImage:
                                FileImage(File(value.profilePhoto!.path)),

                            //  AssetImage("assets/MaskGroup13.png"),
                            child: const Center(
                                child: Icon(
                              Icons.camera_alt,
                              size: 35.0,
                            )),
                          )
                        : const CircleAvatar(
                            radius: 80.0,
                            backgroundImage:
                                AssetImage("assets/MaskGroup13.png"),
                            child: Center(
                                child: Icon(
                              Icons.camera_alt,
                              size: 35.0,
                            )),
                          ),
                  );
                }),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Text(
              "upload your profile photo",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: checkValue,
                  onChanged: (bool? newVal) {
                    setState(() {
                      checkValue = newVal!;
                    });
                  },
                ),
                const Text(
                  "Agree to Buddy Borrows TERMS and CONDITIONS",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            GetBuilder<SingupControrller>(
                init: SingupControrller(),
                builder: (controller) {
                  return controller.isLoading
                      ? Center(
                          child: CircularProgressIndicator(
                          color: kGreenColor,
                        ))
                      : InkWell(
                          onTap: () {
                            if (controller.profilePhoto == null) {
                              kNotificationSnackbar('Error',
                                  'Please add your Profile Photo', null);
                            } else if (!checkValue) {
                              kNotificationSnackbar(
                                  'Error',
                                  'Please agree to our terms before signing Up',
                                  null);
                            } else {
                              // Get.to(const Dashboard());
                              controller.signUpUser();
                            }
                          },
                          child: const CustomButton(text: "SIGN UP"),
                        );
                }),
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
