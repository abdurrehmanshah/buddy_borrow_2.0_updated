// ignore_for_file: avoid_print, prefer_interpolation_to_compose_strings

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/interest_for_non_payment.dart';

import '../../../controllers/personal_loan_controller.dart';

class MoneyTransferDate extends StatefulWidget {
  const MoneyTransferDate({Key? key}) : super(key: key);

  @override
  State<MoneyTransferDate> createState() => _MoneyTransferDateState();
}

class _MoneyTransferDateState extends State<MoneyTransferDate> {
  final _controller = Get.put(PersonalLoanControllers());

  DateTime currentDate = DateTime.now();
  DateTime currentdate2 = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.yMMMd().format(currentDate);
    String formattedDate2 = DateFormat.yMMMd().format(currentdate2);
    Future<void> selectDate(BuildContext context) async {
      final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: currentDate,
          firstDate: DateTime(2015),
          lastDate: DateTime(2050));
      if (pickedDate != null && pickedDate != currentDate) {
        setState(() {
          currentDate = pickedDate;

          print(pickedDate.day);
          print('Date Picked');
        });
        _controller.moneyTransferDate = Timestamp.fromDate(currentDate);
        log('Date' + _controller.moneyTransferDate.toString());
      }
    }

    Future<void> selectDate2(BuildContext context) async {
      final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: currentdate2,
          firstDate: DateTime(2015),
          lastDate: DateTime(2050));
      if (pickedDate != null && pickedDate != currentdate2) {
        setState(() {
          currentdate2 = pickedDate;
          print(pickedDate.day);
          print('Date Picked');
        });
        _controller.repaymentDate = Timestamp.fromDate(currentdate2);
        log('Date' +
            DateFormat.yMd().format(_controller.repaymentDate!.toDate()));
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Get.to(const InterestAmount());
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
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF3F3F3),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * 0.2,
          ),
          Center(child: Image.asset('assets/calendar.png')),
          // const Spacer(),
          SizedBox(
            height: Get.height * 0.12,
          ),

          Container(
              width: Get.width,
              // height: Get.height / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      'Date Money/Service is to be transferred\n to the borrower?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xFFE9F7EB),
                            child: Image.asset(
                              'assets/calendar-check.png',
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(formattedDate.toString()),
                        const SizedBox(
                          width: 120,
                        ),
                        GestureDetector(
                            onTap: () {
                              selectDate(context);
                            },
                            child: Image.asset('assets/calendar-alt.png'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Date Money is to be repaid?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xFFE9F7EB),
                            child: Image.asset(
                              'assets/Calendar2.png',
                              height: 15,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(formattedDate2.toString()),
                        const SizedBox(
                          width: 120,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectDate2(context);
                            });
                          },
                          child: Image.asset(
                            'assets/calendar-alt.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: Get.height / 17,
                    width: Get.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF5BB6EB)),
                    child: TextButton(
                      onPressed: () {
                        Get.to(const InterestForNonPayment());
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 18)),
                      child: const Text('Continue'),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
