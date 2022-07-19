import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';

class ActiveLoansWeb extends StatefulWidget {
  const ActiveLoansWeb({super.key});

  @override
  State<ActiveLoansWeb> createState() => _ActiveLoansWebState();
}

class _ActiveLoansWebState extends State<ActiveLoansWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: AutoSizeText(
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
                          color: Colors.white30,
                        ),
                        child: Center(
                          child: AutoSizeText(
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
                            child: AutoSizeText(
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
                          child: AutoSizeText(
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
              height: Get.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: Get.width * 0.05),
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
                SizedBox(width: Get.width * 0.34),
                Text(
                  'Active Loan',
                  style: TextStyle(
                    fontSize: 25,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Expanded(
                child: SizedBox(
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 4 / 1.2,
                  crossAxisSpacing: Get.width * 0.06,
                  mainAxisSpacing: Get.height * 0.02,
                ),
                children: [
                  GridContainerActiveLoan(
                    first: 'Lender name',
                    second: 'loan type',
                    third: 'Alex jack',
                    fourth: 'Business',
                  ),
                  GridContainerActiveLoan(
                    first: 'Lender name',
                    second: 'loan type',
                    third: 'Alex jack',
                    fourth: 'Business',
                  ),
                  GridContainerActiveLoan(
                    first: 'Lender name',
                    second: 'loan type',
                    third: 'Alex jack',
                    fourth: 'Business',
                  ),
                  GridContainerActiveLoan(
                    first: 'Lender name',
                    second: 'loan type',
                    third: 'Alex jack',
                    fourth: 'Business',
                  ),
                  GridContainerActiveLoan(
                    first: 'Lender name',
                    second: 'loan type',
                    third: 'Alex jack',
                    fourth: 'Business',
                  ),
                  GridContainerActiveLoan(
                    first: 'Lender name',
                    second: 'loan type',
                    third: 'Alex jack',
                    fourth: 'Business',
                  ),
                ],
              ),
            )),
            SizedBox(
              height: Get.height * 0.005,
            ),
            const BottomGreenContainer(),
          ],
        ),
      )),
    );
  }
}

// ignore: must_be_immutable
class GridContainerActiveLoan extends StatelessWidget {
  GridContainerActiveLoan({
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
      width: Get.width * 0.25,
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
