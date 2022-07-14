// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/business_loan_controller.dart';
import 'package:newbuddyborrow/mobileWidgets/custom_textfield.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/loan_details.dart';

import '../../../core/constants/constants.dart';

class BusinessLoanAmountandFee extends StatelessWidget {
  const BusinessLoanAmountandFee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int height = MediaQuery.of(context).size.height.toInt();
    final GlobalKey<FormState> _key = GlobalKey();
    BusinessLoanController controller = Get.put(BusinessLoanController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xffF3F3F3),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                        const Text(
                          'Business Loan Creator',
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(),
                        Container(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: height * 0.76,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Loan Amount and Fee',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            const Center(
                              child: Text(
                                'Pounds that are lent or agreed',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff555555)),
                              ),
                            ),
                            const Spacer(),
                            CustomTextField(
                                // validator: controller.v,
                                text: 'Fee Amount',
                                emailController:
                                    controller.loanAmountcontroller,
                                isObsecure: false,
                                icon: const Icon(Icons.currency_pound_sharp)),
                            const Spacer(),
                            const Center(
                              child: Text(
                                'Fee if lender pays',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff555555)),
                              ),
                            ),
                            const Spacer(),
                            CustomTextField(
                                text: 'Loan Repayments',
                                emailController: controller.feeAmountcontroller,
                                isObsecure: false,
                                icon: const Icon(Icons.currency_pound_sharp)),
                            const Spacer(),
                            const Center(
                              child: Text(
                                'Per month or fixed payment date',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff555555)),
                              ),
                            ),
                            const Spacer(),
                            CustomTextField(
                                text: 'Loan Amount and fee',
                                emailController:
                                    controller.loanRepaymentscontroller,
                                isObsecure: false,
                                icon: const Icon(Icons.currency_pound_sharp)),
                            const Spacer(),
                            const Spacer(),
                            Container(
                              height: Get.height / 16,
                              width: Get.width / 1.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kblueColor),
                              child: TextButton(
                                onPressed: () {
                                  Get.to(const BusinessLoanDetails());
                                },
                                style: TextButton.styleFrom(
                                    primary: kWhiteColor,
                                    textStyle: const TextStyle(fontSize: 18)),
                                child: const Text('Continue'),
                              ),
                            ),
                            const Spacer(),
                            const Spacer(),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
