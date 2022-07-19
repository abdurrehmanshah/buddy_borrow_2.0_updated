// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

import '../activeloanweb/active_loan_web.dart';

class AcceptedAndActiveLoansWeb extends StatefulWidget {
  const AcceptedAndActiveLoansWeb({super.key});

  @override
  State<AcceptedAndActiveLoansWeb> createState() =>
      _AcceptedAndActiveLoansWebState();
}

class _AcceptedAndActiveLoansWebState extends State<AcceptedAndActiveLoansWeb> {
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
                height: Get.height * 0.08,
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
                        'assets/waiting1.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  SizedBox(
                    width: Get.width * 0.62,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmallGridUpperContainer(
                              first: 'Accepted and Active loans',
                              second:
                                  'lorem ipsum dolor sit amet adispicing sit',
                              asset: 'check',
                            ),
                            const Spacer(),
                            SmallGridUpperContainer(
                              first: 'Completed',
                              second:
                                  'lorem ipsum dolor sit amet adispicing sit',
                              asset: 'milestone',
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height * 0.015),
                        Text(
                          'Pending Loan Approval',
                          style: TextStyle(
                              fontSize: 20,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: Get.height * 0.015),
                        SizedBox(
                          width: Get.width * 0.61,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GridContainerActiveLoanMaxWidth(
                                first: 'Lender name',
                                second: 'loan type',
                                third: 'Alex jack',
                                fourth: 'Business',
                              ),
                              GridContainerActiveLoanMaxWidth(
                                first: 'Lender name',
                                second: 'loan type',
                                third: 'Alex jack',
                                fourth: 'Business',
                              ),
                            ],
                          ),
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

class SmallGridUpperContainer extends StatelessWidget {
  SmallGridUpperContainer({
    required this.first,
    required this.second,
    required this.asset,
    Key? key,
  }) : super(key: key);
  String first;
  String second;
  String asset;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.15,
      width: Get.width * 0.3,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width * 0.05,
            child:
                Lottie.asset('assets/Json/$asset.json', fit: BoxFit.fitWidth),
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          SizedBox(
            // width: Get.width * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  first,
                  style: TextStyle(
                      fontSize: 14,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                AutoSizeText(
                  second,
                  style: TextStyle(
                      fontSize: 14,
                      color: kBlackColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: Get.height * 0.01,
                right: Get.height * 0.02,
              ),
              child: Container(
                height: Get.height * 0.04,
                width: Get.height * 0.04,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: kGrey),
                    ]),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kGreenColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class GridContainerActiveLoanMaxWidth extends StatelessWidget {
  GridContainerActiveLoanMaxWidth({
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
    Key? key,
  }) : super(key: key);
  String first;
  String second;
  String third;
  String fourth;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.15,
      width: Get.width * 0.3,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Padding(
              padding: EdgeInsets.only(left: Get.width * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    first,
                    style: TextStyle(color: kGrey, fontSize: 14),
                  ),
                  SizedBox(
                    width: Get.width * 0.09,
                  ),
                  Text(
                    second,
                    style: TextStyle(color: kGrey, fontSize: 14),
                  )
                ],
              )),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Padding(
              padding: EdgeInsets.only(left: Get.width * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    third,
                    style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                  Text(
                    fourth,
                    style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              )),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'learn more',
                style: TextStyle(
                    color: kGrey, fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(
                width: Get.width * 0.005,
              ),
              Container(
                height: Get.height * 0.04,
                width: Get.height * 0.04,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: kGrey),
                    ]),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kGreenColor,
                ),
              ),
              SizedBox(
                width: Get.width * 0.01,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
