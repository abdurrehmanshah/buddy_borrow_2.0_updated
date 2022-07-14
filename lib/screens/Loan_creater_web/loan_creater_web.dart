// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class LoanCreaterWeb extends StatefulWidget {
  const LoanCreaterWeb({super.key});

  @override
  State<LoanCreaterWeb> createState() => _LoanCreaterWebState();
}

class _LoanCreaterWebState extends State<LoanCreaterWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: SafeArea(
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
              SizedBox(
                height: Get.height * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * 0.1),
                    child: SizedBox(
                      width: Get.width * 0.25,
                      child: Image.asset(
                        'assets/bank.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Loan Creator',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit. In risus'
                          'neque, commodo quis luctus a, convallis quis sapien. Aliquam vitae pharetra nibh. Sed mollis'
                          'interdum ante sit amet mollis. Vivam',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: kBlackColor),
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        Text(
                          'Loan Type',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        LoanCreatorWidgetWeb(
                          'user',
                          'Personal',
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        LoanCreatorWidgetWeb(
                          'business',
                          'Business',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class LoanCreatorWidgetWeb extends StatelessWidget {
  LoanCreatorWidgetWeb(
    this.asset,
    this.title,
  );
  String asset;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.18,
      width: Get.width * 0.25,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: Get.height * 0.1,
            child: Image.asset(
              'assets/$asset.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
              width: Get.width * 0.17,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: kBlackColor),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        size: 30,
                        color: kGreenColor,
                      ),
                    ],
                  ),
                  Text(
                    'Lorem ipsum dolor consectetur adipiscing elit amet.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: kBlackColor),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
