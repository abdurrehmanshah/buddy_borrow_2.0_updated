import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/interest_amount.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/money_transfer_date.dart';

class BusinessLoanInterest extends StatefulWidget {
  const BusinessLoanInterest({Key? key}) : super(key: key);

  @override
  State<BusinessLoanInterest> createState() => _BusinessLoanInterestState();
}

class _BusinessLoanInterestState extends State<BusinessLoanInterest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldcolor,
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Get.to(const LoanDescription());
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
        ),
        title: const Text(
          'Business Loan Creator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    'Interest',
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
                height: Get.height / 13,
                decoration: BoxDecoration(
                    color: kblueColor, borderRadius: BorderRadius.circular(40)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const BusinessinterestAmount());
                  },
                  child: Text(
                    'YES',
                    style: TextStyle(fontSize: 20, color: kWhiteColor),
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
                    color: const Color(0xFF92E592),
                    borderRadius: BorderRadius.circular(40)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const BusinessMoneyTransferDate());
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
    );
  }
}
