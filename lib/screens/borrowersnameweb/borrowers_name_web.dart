import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';

class BorrowerNameWeb extends StatefulWidget {
  const BorrowerNameWeb({super.key});

  @override
  State<BorrowerNameWeb> createState() => _BorrowerNameWebState();
}

class _BorrowerNameWebState extends State<BorrowerNameWeb> {
  @override
  Widget build(BuildContext context) {
    bool valuefirst = false;

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
                          second: '\€200',
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
                    height: Get.height * 0.05,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.height * 0.05,
                          child: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.white,
                            value: valuefirst,
                            onChanged: (value) {
                              setState(() {
                                valuefirst = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'agree to buddy borrow\'s ',
                          style: TextStyle(
                            fontSize: 14,
                            color: kBlackColor,
                          ),
                        ),
                        Text(
                          'TERMS ',
                          style: TextStyle(
                            fontSize: 15,
                            color: kblueColor,
                          ),
                        ),
                        Text(
                          '&',
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlackColor,
                          ),
                        ),
                        Text(
                          ' CONDITIONS',
                          style: TextStyle(
                            fontSize: 15,
                            color: kblueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: CustomButtonWeb(text: 'CONTINUE', widdth: 0.25))
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

// ignore: must_be_immutable
class TextColumnBigWeb extends StatelessWidget {
  TextColumnBigWeb({
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
              fontSize: 18,
              color: kGrey,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: Get.height * 0.005,
          ),
          AutoSizeText(
            second,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18,
              color: kBlackColor,
              fontWeight: ftweight,
            ),
          )
        ],
      ),
    );
  }
}
