import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/interest_amont.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/money_transfer_date.dart';

class Interest extends StatefulWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
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
            // Get.to(const LoanDescription());
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
        ),
        title: const Text(
          'Personal Loan Creator',
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
          child: SingleChildScrollView(
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
                  height: Get.height / 15,
                  decoration: BoxDecoration(
                      color: kblueColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {
                      Get.off(const InterestAmount());
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
                      Get.off(const MoneyTransferDate());
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
