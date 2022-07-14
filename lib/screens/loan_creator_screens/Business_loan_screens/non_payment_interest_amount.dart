import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/fee_payer.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';

class BusinessNonPaymentInterestAmount extends StatefulWidget {
  const BusinessNonPaymentInterestAmount({Key? key}) : super(key: key);

  @override
  State<BusinessNonPaymentInterestAmount> createState() =>
      _BusinessNonPaymentInterestAmountState();
}

class _BusinessNonPaymentInterestAmountState
    extends State<BusinessNonPaymentInterestAmount> {
  @override
  Widget build(BuildContext context) {
    double value = 4;
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: kBlackColor,
        ),
        title: const Text(
          'Business Loan Creator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: scaffoldcolor,
      body: Column(
        children: [
          const SizedBox(),
          const Spacer(),
          Image.asset('assets/money.png'),
          const Spacer(),
          Container(
            height: screensize.height / 2,
            width: screensize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: kWhiteColor),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Interest for non-Payment?',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  Text(
                    'Interest Amount',
                    style: TextStyle(
                        color: kGrey,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  StatefulBuilder(
                    builder: ((context, setState) => SfSlider(
                        min: 0.0,
                        max: 10.0,
                        enableTooltip: true,
                        showLabels: true,
                        showTicks: true,
                        interval: 1,
                        value: value,
                        numberFormat: NumberFormat(""),
                        onChanged: (newValue) {
                          setState(() {
                            value = newValue;
                          });
                        })),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Container(
                    height: Get.height / 17,
                    width: Get.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kblueColor),
                    child: TextButton(
                      onPressed: () {
                        Get.to(const BusinessFeePayer());
                      },
                      style: TextButton.styleFrom(
                          primary: kWhiteColor,
                          textStyle: const TextStyle(fontSize: 18)),
                      child: const Text('Continue'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
