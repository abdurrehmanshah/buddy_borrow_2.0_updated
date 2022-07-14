// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/personal_loan_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/interest.dart';

class LoanDescription extends StatefulWidget {
  const LoanDescription({Key? key}) : super(key: key);

  @override
  State<LoanDescription> createState() => _LoanDescriptionState();
}

class _LoanDescriptionState extends State<LoanDescription> {
  @override
  Widget build(BuildContext context) {
    PersonalLoanControllers _controller = Get.put(PersonalLoanControllers());
    final GlobalKey<FormState> _key = GlobalKey();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F3F3),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () {
              // Get.to(const LoanAmountAndFee());
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Personal Loan Creator',
          style: TextStyle(color: kBlackColor, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Get.height / 2.2,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFFF3F3F3),
                        ),
                        height: Get.height / 4,
                        width: Get.width / 1.1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (val) => _controller.validateFtn(
                                val.toString(), 'Details'),
                            maxLines: 4,
                            minLines: 4,
                            controller: _controller.loanDescriptionController,
                            decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: 'Type here...',
                              hintStyle: TextStyle(
                                  color: Color(0xFFD8D9DA),
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: Get.height / 17,
                      width: Get.width / 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF5BB6EB)),
                      child: TextButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            Get.to(const Interest());
                          }
                        },
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 18)),
                        child: const Text('Continue'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
