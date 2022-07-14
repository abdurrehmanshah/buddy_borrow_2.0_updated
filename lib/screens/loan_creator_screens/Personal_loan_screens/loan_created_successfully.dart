// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/others/dashboard_bottom_navigation_bar.dart';

import '../../../core/constants/constants.dart';

class LoanCreated extends StatefulWidget {
  const LoanCreated({Key? key}) : super(key: key);

  @override
  State<LoanCreated> createState() => _LoanCreatedState();
}

class _LoanCreatedState extends State<LoanCreated> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: const Text(
                'Successfully Created Loan',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screensize.height / 3,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et nisl sit amet ex aliquet vestibulum.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Container(
          height: Get.height / 17,
          width: Get.width / 1.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: kblueColor),
          child: TextButton(
            onPressed: () {
              Get.to(const ReturnNavBar());
            },
            style: TextButton.styleFrom(
                primary: kWhiteColor, textStyle: const TextStyle(fontSize: 18)),
            child: const Text('Done'),
          ),
        ),
      ],
    ))));
  }
}
