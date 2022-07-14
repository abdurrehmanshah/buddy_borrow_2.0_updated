import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/mile_stone_repayment.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/loan_amount_and_fee.dart';

class LoanType extends StatefulWidget {
  const LoanType({Key? key}) : super(key: key);

  @override
  State<LoanType> createState() => _LoanTypeState();
}

class _LoanTypeState extends State<LoanType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: scaffoldcolor,
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => const LoanCreatorGetStarted()),
            // );
            // Get.to(const LoanAmountAndFee());
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: kBlackColor,
        ),
        title: Text(
          'Loan Creator',
          style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Get.height / 3,
          width: Get.width,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text(
                      'Loan Type',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 1.1,
                  height: Get.height / 15,
                  decoration: BoxDecoration(
                      color: const Color(0xFF5BB6EB),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {
                      Get.off(const LoanAmountAndFee());
                    },
                    child: const Text(
                      'Personal',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  width: Get.width / 1.1,
                  height: Get.height / 15,
                  decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {
                      Get.off(const MileStoneRepayment());
                    },
                    child: Text(
                      'Business',
                      style: TextStyle(fontSize: 20, color: kWhiteColor),
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
