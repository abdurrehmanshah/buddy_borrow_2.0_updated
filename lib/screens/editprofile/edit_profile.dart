import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/image_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/mobileWidgets/custom_button.dart';
import 'package:newbuddyborrow/mobileWidgets/edit_profile_text_field.dart';

class EditProfle extends StatefulWidget {
  const EditProfle({Key? key}) : super(key: key);

  @override
  State<EditProfle> createState() => _EditProfleState();
}

class _EditProfleState extends State<EditProfle> {
  late TextEditingController firstnamecontroller;
  late TextEditingController lastnamecontroller;
  late TextEditingController phonecontroller;
  late TextEditingController emailcontroller;
  late TextEditingController addresscontroller;
  late TextEditingController postalcodecontroller;
  @override
  void initState() {
    firstnamecontroller = TextEditingController();
    lastnamecontroller = TextEditingController();
    phonecontroller = TextEditingController();
    emailcontroller = TextEditingController();
    addresscontroller = TextEditingController();
    postalcodecontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstnamecontroller.dispose();
    lastnamecontroller.dispose();
    phonecontroller.dispose();
    emailcontroller.dispose();
    addresscontroller.dispose();
    postalcodecontroller.dispose();
    super.dispose();
  }

  DateTime selectedDate = DateTime.now();
  // String formattedDate = DateFormat('yyyy-MM-dd').format();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8, 3),
      lastDate: DateTime(2101, 3, 5),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  ImageController imageController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: SizedBox(
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
                  'Edit Profile',
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
                  InkWell(
                    onTap: () async {
                      await imageController.pickImage();
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/MaskGroup13.png',
                        height: Get.height * 0.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const Text(
              'John Doe',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            EditProfileTextField(
              hint: 'first name',
              icon: Icons.person,
              controller: firstnamecontroller,
            ),
            EditProfileTextField(
              hint: 'last name',
              icon: Icons.person,
              controller: lastnamecontroller,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: Get.width * 0.85,
                height: Get.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    const Icon(
                      Icons.calendar_month_outlined,
                      size: 26,
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    Text(
                      '${selectedDate.day}-${selectedDate.month}-${selectedDate.year}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        selectDate(context);
                      },
                      child: Container(
                        height: Get.height * 0.045,
                        width: Get.height * 0.045,
                        decoration: BoxDecoration(
                            color: kWhiteColor, shape: BoxShape.circle),
                        child: Icon(
                          Icons.calendar_month_outlined,
                          color: kblueColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                  ],
                ),
              ),
            ),
            EditProfileTextField(
              hint: 'phone number',
              icon: Icons.phone_android_rounded,
              controller: phonecontroller,
            ),
            EditProfileTextField(
              hint: 'email',
              icon: Icons.email,
              controller: emailcontroller,
            ),
            EditProfileTextField(
              hint: 'address',
              icon: Icons.location_pin,
              controller: addresscontroller,
            ),
            EditProfileTextField(
              hint: 'postal code',
              icon: Icons.point_of_sale,
              controller: postalcodecontroller,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const CustomButton(text: 'UPDATE PROFILE'),
            SizedBox(
              height: Get.height * 0.03,
            ),
          ],
        ),
      ))),
    );
  }
}
