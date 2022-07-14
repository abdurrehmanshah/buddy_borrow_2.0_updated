import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/business_loan_info.dart';
import '../../../core/constants/constants.dart';

class BusinessFeePayer extends StatefulWidget {
  const BusinessFeePayer({Key? key}) : super(key: key);

  @override
  State<BusinessFeePayer> createState() => _BusinessFeePayerState();
}

// ignore: constant_identifier_names
enum BusinessFeePayerenum { borrower, lender, split }

class _BusinessFeePayerState extends State<BusinessFeePayer> {
  BusinessFeePayerenum? _character = BusinessFeePayerenum.borrower;
  @override
  Widget build(BuildContext context) {
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
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(),
          const Spacer(),
          Image.asset('assets/fee.png'),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            height: screensize.height / 2,
            width: screensize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Fee Payer',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(15)),
                    width: screensize.width,
                    child: ListTile(
                      title: const Text(
                        'Borrower',
                        style: TextStyle(letterSpacing: 0.5),
                      ),
                      leading: Radio<BusinessFeePayerenum>(
                        value: BusinessFeePayerenum.borrower,
                        groupValue: _character,
                        onChanged: (BusinessFeePayerenum? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(15)),
                    width: screensize.width,
                    child: ListTile(
                      title: const Text(
                        'Lender',
                        style: TextStyle(letterSpacing: 0.5),
                      ),
                      leading: Radio<BusinessFeePayerenum>(
                        value: BusinessFeePayerenum.lender,
                        groupValue: _character,
                        onChanged: (BusinessFeePayerenum? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      title: const Text(
                        'Split',
                        style: TextStyle(letterSpacing: 0.5),
                      ),
                      leading: Radio<BusinessFeePayerenum>(
                        value: BusinessFeePayerenum.split,
                        groupValue: _character,
                        onChanged: (BusinessFeePayerenum? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  height: Get.height / 16,
                  width: Get.width / 1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kblueColor),
                  child: TextButton(
                    onPressed: () {
                      Get.to(const BusinessLoanInfo());
                    },
                    style: TextButton.styleFrom(
                        primary: kWhiteColor,
                        textStyle: const TextStyle(fontSize: 18)),
                    child: const Text('Continue'),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
