import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/image_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/mobileWidgets/custom_button.dart';

class ReplaymentIn extends StatefulWidget {
  const ReplaymentIn({Key? key}) : super(key: key);

  @override
  State<ReplaymentIn> createState() => _ReplaymentInState();
}

class _ReplaymentInState extends State<ReplaymentIn> {
  ImageController imaggeController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
          child: SafeArea(
              child: SizedBox(
        // height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width * 0.04,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: kBlackColor,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.2,
                ),
                Text(
                  'REPLAYMENT IN',
                  style: TextStyle(
                      fontSize: 18,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.005,
            ),
            Container(
              height: Get.height * 0.05,
              width: Get.width,
              color: kWhiteColor,
              child: Center(
                child: Text(
                  '10, July 2022',
                  style: TextStyle(fontSize: 16, color: kblueColor),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.05),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Loan Detail',
                  style: TextStyle(
                      fontSize: 18,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              width: Get.width,
              // height: Get.height,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: kWhiteColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextColumn(
                          width: 0.6,
                          first: 'borrower\'s name',
                          second: 'Adam Scott',
                          ftweight: FontWeight.bold),
                      TextColumn(
                          width: 0.3,
                          first: 'Loan Type',
                          second: 'Adam Scott',
                          ftweight: FontWeight.bold)
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextColumn(
                          width: 0.6,
                          first: 'address',
                          second: '12 ST DOWN TOWN NEW',
                          ftweight: FontWeight.bold),
                      TextColumn(
                          width: 0.3,
                          first: 'Post Code',
                          second: '1234',
                          ftweight: FontWeight.bold)
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextColumn(
                          width: 0.6,
                          first: 'relationship to the the borrower',
                          second: 'Lorem ipsum',
                          ftweight: FontWeight.bold),
                      TextColumn(
                          width: 0.3,
                          first: '',
                          second: '',
                          ftweight: FontWeight.bold)
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextColumn(
                          width: 0.6,
                          first: 'interest amount',
                          second: '€200',
                          ftweight: FontWeight.bold),
                      TextColumn(
                          width: 0.3,
                          first: 'service transferred',
                          second: '20, May 2022',
                          ftweight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Text(
                      '-------------------------------- 1st Stage ---------------------------------'),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  TextColumn(
                      width: 0.9,
                      first: 'Description',
                      second:
                          'lorem ipsum dolor color sit amet consector dispicitnation for ac lorem ipsum dolor color sit amet consector dispicitnation for ac',
                      ftweight: FontWeight.normal),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextColumn(
                          width: 0.6,
                          first: 'interest percentage',
                          second: '3 %',
                          ftweight: FontWeight.bold),
                      TextColumn(
                          width: 0.3,
                          first: 'date of return',
                          second: '20, May 2022',
                          ftweight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Text(
                      '-------------------------------- 2nd Stage ---------------------------------'),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  TextColumn(
                      width: 0.9,
                      first: 'Description',
                      second:
                          'lorem ipsum dolor color sit amet consector dispicitnation for ac lorem ipsum dolor color sit amet consector dispicitnation for ac',
                      ftweight: FontWeight.normal),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextColumn(
                          width: 0.6,
                          first: 'interest percentage',
                          second: '3 %',
                          ftweight: FontWeight.bold),
                      TextColumn(
                          width: 0.3,
                          first: 'date of return',
                          second: '20, May 2022',
                          ftweight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Text(
                    'Loan Terms & Conditions',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextColumn(
                      width: 0.9,
                      first: '',
                      second:
                          'lorem ipsum dolor color sit amet consector dispicitnation for ac lorem ipsum dolor color sit amet consector dispicitnation for ac',
                      ftweight: FontWeight.normal),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.05),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Signature',
                        style: TextStyle(
                            fontSize: 18,
                            color: kBlackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  InkWell(
                    onTap: () {
                      imaggeController.pickImage();
                    },
                    child: Container(
                      height: Get.height * 0.2,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'drop your signature here',
                          style: TextStyle(color: kGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.05),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'borrower picture',
                        style: TextStyle(
                            fontSize: 18,
                            color: kBlackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  InkWell(
                    onTap: () {
                      Get.bottomSheet(Container(
                        height: Get.height * 0.3,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                            const Text(
                              'before you drop your signature make\nsure to take a clear picture of your face to\nensurethat it\'s really sing in to the loan',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: Get.height * 0.08,
                            ),
                            InkWell(
                              child: Container(
                                width: Get.width * 0.8,
                                height: Get.height * 0.06,
                                decoration: BoxDecoration(
                                  color: kblueColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: Get.width * 0.11,
                                    ),
                                    Icon(
                                      Icons.camera_alt,
                                      color: kWhiteColor,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.1,
                                    ),
                                    Text(
                                      'Open Camera',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                    },
                    child: Container(
                      height: Get.height * 0.25,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'drop you picture here',
                          style: TextStyle(color: kGrey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  const CustomButton(text: 'Done'),
                  SizedBox(height: Get.height * 0.03),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}

// ignore: must_be_immutable
class TextColumn extends StatelessWidget {
  TextColumn({
    required this.width,
    required this.first,
    required this.second,
    required this.ftweight,
    Key? key,
  }) : super(key: key);

  // double height;
  double width;
  String first;
  String second;
  FontWeight ftweight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: Get.height * height,
      width: Get.width * width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            first,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
              color: kGrey,
              fontWeight: FontWeight.normal,
            ),
          ),
          AutoSizeText(
            second,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16,
              color: kBlackColor,
              fontWeight: ftweight,
            ),
          )
        ],
      ),
    );
  }
}
