import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/non_payment_interest_amount.dart';

import 'fee_payer.dart';

class InterestForNonPayment extends StatefulWidget {
  const InterestForNonPayment({Key? key}) : super(key: key);

  @override
  State<InterestForNonPayment> createState() => _InterestForNonPaymentState();
}

class _InterestForNonPaymentState extends State<InterestForNonPayment> {
  @override
  Widget build(BuildContext context) {
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
          'Personal Loan Creator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: scaffoldcolor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Get.height / 3,
          width: Get.width,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kGrey,
                offset: const Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      'Interest for non-payment',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 1.1,
                  height: Get.height / 15,
                  decoration: BoxDecoration(
                      color: kblueColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {
                      Get.off(const NonPaymentInterestAmount());
                    },
                    child: Text(
                      'YES',
                      style: TextStyle(fontSize: 20, color: kWhiteColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: Get.width / 1.1,
                  height: Get.height / 15,
                  decoration: BoxDecoration(
                      color: const Color(0xFF92E592),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {
                      Get.off(const FeePayer());
                    },
                    child: const Text(
                      'NO',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
