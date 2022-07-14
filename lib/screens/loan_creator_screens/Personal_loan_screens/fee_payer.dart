import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/personal_loan_controller.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/personal_loan_info.dart';

import '../../../core/constants/constants.dart';

class FeePayer extends StatefulWidget {
  const FeePayer({Key? key}) : super(key: key);

  @override
  State<FeePayer> createState() => _FeePayerState();
}

// ignore: constant_identifier_names
enum FeePayerenum { borrower, lender, split }

class _FeePayerState extends State<FeePayer> {
  FeePayerenum? _character = FeePayerenum.borrower;
  final _controller = Get.put(PersonalLoanControllers());
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
          'Personal Loan Creator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: screensize.height / 8,
              left: screensize.width / 4,
              child: Center(child: Image.asset('assets/fee.png'))),
          Positioned(
            bottom: 0,
            child: Container(
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
                        leading: Radio<FeePayerenum>(
                          value: FeePayerenum.borrower,
                          groupValue: _character,
                          onChanged: (FeePayerenum? value) {
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
                        leading: Radio<FeePayerenum>(
                          value: FeePayerenum.lender,
                          groupValue: _character,
                          onChanged: (FeePayerenum? value) {
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
                        leading: Radio<FeePayerenum>(
                          value: FeePayerenum.split,
                          groupValue: _character,
                          onChanged: (FeePayerenum? value) {
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
                        // Get.to(const PersonalLoanInfo());
                        log(_character!.index.toString());
                        if (_character!.index == 0) {
                          _controller.feePayer = 'borrower';
                        } else if (_character!.index == 1) {
                          _controller.feePayer = 'lender';
                        } else if (_character!.index == 2) {
                          _controller.feePayer = 'split';
                        }
                        log(_controller.feePayer);
                        Get.off(const PersonalLoanInfo());
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
      )),
    );
  }
}
