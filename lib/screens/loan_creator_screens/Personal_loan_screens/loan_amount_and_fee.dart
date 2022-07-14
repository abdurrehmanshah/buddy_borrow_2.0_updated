import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/personal_loan_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/mobileWidgets/custom_textfield.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/loan_details.dart';

class LoanAmountAndFee extends StatefulWidget {
  const LoanAmountAndFee({Key? key}) : super(key: key);

  @override
  State<LoanAmountAndFee> createState() => _LoanAmountAndFeeState();
}

class _LoanAmountAndFeeState extends State<LoanAmountAndFee> {
  PersonalLoanControllers controller = Get.put(PersonalLoanControllers());
  final GlobalKey<FormState> _key = GlobalKey();

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
            //   MaterialPageRoute(builder: (context) =>  ()),
            // );
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
          height: Get.height / 1.5,
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
            child: Form(
              key: _key,
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text(
                        'Loan Amount and fee',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      const Text('Pounds that are lent or agreed'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        text: 'Loan Amount',
                        validator: (val) => controller.validateFtn(
                            val.toString(), 'Loan Amount'),
                        icon: const Icon(
                          Icons.currency_pound_sharp,
                        ),
                        isObsecure: false,
                        emailController: controller.loanAmountcontroller,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.01,
                      ),
                      const Text('Fee if lender pays'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        text: 'Fee Amount',
                        validator: (val) => controller.validateFtn(
                            val.toString(), 'Fee Amount'),
                        icon: const Icon(
                          Icons.currency_pound_sharp,
                        ),
                        isObsecure: false,
                        emailController: controller.feeAmountcontroller,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      const Text('Per month or fixed payment'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        validator: (val) => controller.validateFtn(
                            val.toString(), 'Repayment Amount'),
                        text: 'Loan Repayments',
                        icon: const Icon(
                          Icons.currency_pound_sharp,
                        ),
                        isObsecure: false,
                        emailController: controller.loanRepaymentscontroller,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
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
                          Get.to(const LoanDetails());
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
    );
  }
}
