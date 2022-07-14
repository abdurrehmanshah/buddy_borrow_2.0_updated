import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class SecurityQuestions extends StatefulWidget {
  const SecurityQuestions({Key? key}) : super(key: key);

  @override
  State<SecurityQuestions> createState() => _SecurityQuestionsState();
}

class _SecurityQuestionsState extends State<SecurityQuestions> {
  @override
  Widget build(BuildContext context) {
    bool third = true;

    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: Get.height,
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
                SizedBox(width: Get.width * 0.15),
                const Text(
                  'Security Questions',
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
            InkWell(
              onTap: () {},
              child: SecurityQuestionContainer(
                  number: '1', text: 'what is your first school name'),
            ),
            SecurityQuestionForEach('this is the first question', true),
            SizedBox(
              height: Get.height * 0.01,
            ),
            InkWell(
              onTap: () {},
              child: SecurityQuestionContainer(
                  number: '2', text: 'what is your first school name'),
            ),
            SecurityQuestionForEach('this is the first question', false),
            SizedBox(
              height: Get.height * 0.01,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  third = !third;
                });
              },
              child: SecurityQuestionContainer(
                  number: '3', text: 'what is your first school name'),
            ),
            SecurityQuestionForEach('this is the first question', false),
          ],
        ),
      )),
    );
  }
}

// ignore: must_be_immutable
class SecurityQuestionContainer extends StatelessWidget {
  SecurityQuestionContainer({
    required this.number,
    required this.text,
    Key? key,
  }) : super(key: key);

  String number;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.06,
      width: Get.width * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width * 0.03,
          ),
          Container(
            height: Get.height * 0.04,
            width: Get.height * 0.04,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: kblueColor),
            child: Center(
                child: Text(
              number,
              style: TextStyle(fontSize: 16, color: kWhiteColor),
            )),
          ),
          SizedBox(
            width: Get.width * 0.03,
          ),
          Expanded(
            child: SizedBox(
              child: Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SecurityQuestionForEach extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  SecurityQuestionForEach(
    this.text,
    this.boolcheck,
  );
  String text;
  bool boolcheck;
  @override
  Widget build(BuildContext context) {
    return boolcheck == true
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: Get.height * 0.1,
              width: Get.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.007,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * 0.35,
                      ),
                      Text(
                        'Answer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: kGreenColor),
                      ),
                      SizedBox(
                        width: Get.width * 0.25,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: Get.height * .035,
                            width: Get.height * .035,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kWhiteColor),
                            child: const Icon(
                              Icons.edit,
                              size: 18,
                            )),
                      )
                    ],
                  ),
                  Expanded(
                      child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
          )
        : const SizedBox();
  }
}
