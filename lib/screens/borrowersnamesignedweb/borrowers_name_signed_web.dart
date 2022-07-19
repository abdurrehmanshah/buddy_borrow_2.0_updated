import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/pendingloanaprovalweb/pending_loan_approval_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';

class BorrowerNameSignedWeb extends StatefulWidget {
  const BorrowerNameSignedWeb({super.key});

  @override
  State<BorrowerNameSignedWeb> createState() => _BorrowerNameSignedWebState();
}

class _BorrowerNameSignedWebState extends State<BorrowerNameSignedWeb> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextColumnBigWeb(
                          width: 0.15,
                          first: 'Borrowers name',
                          second: 'Adma Scott',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.2,
                          first: 'Relation to the borrower',
                          second: 'Fried',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.2,
                          first: 'Loan Type',
                          second: 'Personal',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.2,
                          first: 'Address',
                          second: '12 ST DOWN TOWN,',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.15,
                          first: 'Post Code',
                          second: '1234',
                          ftweight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextColumnBigWeb(
                          width: 0.15,
                          first: 'Interest Amount',
                          second: '€200',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.2,
                          first: 'Interest Percentage',
                          second: '2%',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.2,
                          first: 'Date of Return',
                          second: '12-09-2022',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.2,
                          first: 'Service Transferred',
                          second: '12-09-2022',
                          ftweight: FontWeight.bold),
                      TextColumnBigWeb(
                          width: 0.15,
                          first: 'Fee Payer',
                          second: 'Lender',
                          ftweight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  TextColumnBigWeb(
                      width: 0.85,
                      first: 'Loan Description',
                      second:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit. In risus neque, commodo quis luctus a, convallis quis'
                          'sapien. Aliquam vitae pharetra nibh. Sed mollis interdum ante sit amet mollis. Vivamus efficitur tincidunt iaculis. Nunc dapibus urna turpis, sit'
                          'amet malesuada massa ornare sit amet.',
                      ftweight: FontWeight.normal),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  TextColumnBigWeb(
                      width: 0.85,
                      first: 'Terms & Conditions',
                      second:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit. In risus neque, commodo quis luctus a, convallis quis'
                          'sapien. Aliquam vitae pharetra nibh. Sed mollis interdum ante sit amet mollis. Vivamus efficitur tincidunt iaculis. Nunc dapibus urna turpis, sit'
                          'amet malesuada massa ornare sit amet.',
                      ftweight: FontWeight.normal),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    'Signature',
                    style: TextStyle(
                        fontSize: 16,
                        color: kGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.005,
                  ),
                  Container(
                    height: Get.height * 0.2,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kWhiteColor),
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
