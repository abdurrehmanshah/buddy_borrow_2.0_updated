import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';
import 'package:newbuddyborrow/webWidgets/web_textfield.dart';

class DateMoneyService extends StatefulWidget {
  const DateMoneyService({super.key});

  @override
  State<DateMoneyService> createState() => _DateMoneyServiceState();
}

class _DateMoneyServiceState extends State<DateMoneyService> {
  @override
  Widget build(BuildContext context) {
    DateTime dateselected = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.09,
              width: Get.width,
              color: kblueColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.1,
                      child: Image.asset(
                        'assets/Borrow.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: Get.width * 0.09,
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white30,
                          ),
                          child: Center(
                            child: Text(
                              'LOAN CREATER',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    Container(
                        width: Get.width * 0.09,
                        height: Get.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'BORROWED',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        )),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: Get.width * 0.09,
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'LENDED',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    Container(
                        width: Get.width * 0.09,
                        height: Get.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'ESCALATE',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Icon(
                      Icons.notifications,
                      color: kWhiteColor,
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Icon(
                      Icons.account_circle_rounded,
                      color: kWhiteColor,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(
                              width: Get.width * 0.01,
                            ),
                            const Text(
                              'BACK',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      SizedBox(
                        height: Get.height * 0.4,
                        width: Get.width * 0.3,
                        child: Image.asset(
                          'assets/date.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.12),
                        Text(
                          'Date Money/Service is to be transfered to the borrower',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(height: Get.height * 0.02),
                        const DateContainer(),
                        SizedBox(
                          height: Get.height * 0.06,
                        ),
                        Text(
                          'Date money is to be repaid',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(height: Get.height * 0.05),
                        const DateContainer(),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        const CustomButtonWeb(
                          text: 'CONTINUE',
                          widdth: 0.23,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            const BottomGreenContainer(),
          ],
        ),
      )),
    );
  }
}

class DateContainer extends StatefulWidget {
  const DateContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<DateContainer> createState() => _DateContainerState();
}

class _DateContainerState extends State<DateContainer> {
  DateTime chosendate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Future<void> selectdDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: chosendate,
        firstDate: DateTime(2015, 8, 3),
        lastDate: DateTime(2101, 3, 5),
      );

      if (picked != null && picked != chosendate) {
        setState(() {
          chosendate = picked;
        });
      }
    }

    return Container(
      width: Get.width * 0.23,
      height: Get.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width * 0.01,
          ),
          Container(
            height: Get.height * 0.05,
            width: Get.height * 0.05,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.green.shade50),
            child: const Icon(
              Icons.calendar_month,
              size: 20,
            ),
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          SizedBox(
            width: Get.width * 0.15,
            child: Text(
                '${chosendate.day}-${chosendate.month}-${chosendate.year}'),
          ),
          InkWell(
            onTap: () {
              selectdDate(context);
            },
            child: Container(
              height: Get.height * 0.05,
              width: Get.height * 0.05,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: Offset.zero,
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                )
              ], shape: BoxShape.circle, color: Colors.white),
              child: Icon(Icons.calendar_month_outlined, color: kblueColor),
            ),
          ),
        ],
      ),
    );
  }
}
