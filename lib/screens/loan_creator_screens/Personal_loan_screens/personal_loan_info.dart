import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:newbuddyborrow/controllers/personal_loan_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/mobileWidgets/personal_loan_screen_widgets/personal_loan_info_listTile2.dart';

import '../../../mobileWidgets/personal_loan_screen_widgets/personal_loan_info_listTile1.dart';

class PersonalLoanInfo extends StatefulWidget {
  const PersonalLoanInfo({Key? key}) : super(key: key);

  @override
  State<PersonalLoanInfo> createState() => _PersonalLoanInfoState();
}

class _PersonalLoanInfoState extends State<PersonalLoanInfo> {
  final _controller = Get.put(PersonalLoanControllers());
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldcolor,
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
            iconSize: 20,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Personal Loan Creator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
                height: screensize.height,
                width: screensize.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CustomListTile(
                                title: 'Borrowers Name',
                                subtitle:
                                    _controller.borrowersNameController.text,
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              CustomListTile(
                                title: 'Address',
                                subtitle: _controller.addresscontroller.text,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              CustomListTile(
                                title: 'RelationShip to the borrower',
                                subtitle: _controller.borrowerRelationShip.text,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              CustomListTile(
                                title: 'Interest Amount',
                                subtitle: _controller.interestAmountController
                                        .text.isNotEmpty
                                    ? double.parse(_controller
                                            .interestAmountController.text
                                            .toString())
                                        .toStringAsFixed(2)
                                    : '0',
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              CustomListTile(
                                title: 'Service Transferred',
                                subtitle: DateFormat.yMd().format(
                                    _controller.moneyTransferDate!.toDate()),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const CustomListTile(
                                title: 'Loan Type',
                                subtitle: 'Personal',
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              CustomListTile(
                                title: 'Postcode',
                                subtitle: _controller.postcodecontroller.text,
                              ),
                              SizedBox(
                                height: Get.height * 0.09,
                              ),
                              const CustomListTile(
                                title: 'Interest Percentage',
                                subtitle: '2%',
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              CustomListTile(
                                title: 'Date of Return',
                                subtitle: DateFormat.yMd().format(
                                    _controller.repaymentDate!.toDate()),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    CustomListStyle2(
                      screensize: screensize,
                      title: 'Loan Description',
                      subtitle: _controller.loanDescriptionController.text,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: screensize.width,
                          child: Row(
                            children: [
                              Flexible(
                                child: Checkbox(
                                  value: _value,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _value = newValue!;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text('Agree to Buddy Borrows '),
                              const Text(
                                'TERMS',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              const Text(' and '),
                              const Text(
                                'CONDITIONS',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GetBuilder<PersonalLoanControllers>(
                        init: _controller,
                        builder: (cont) {
                          return cont.isLoading
                              ? Center(
                                  child: CircularProgressIndicator(
                                  color: kGreenColor,
                                ))
                              : Container(
                                  height: Get.height / 17,
                                  width: Get.width / 1.2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: kblueColor),
                                  child: TextButton(
                                    onPressed: () {
                                      // Get.to(const LoanCreated());
                                      if (_value) {
                                        // Get.put(PaymentController())
                                        //     .makePayment(
                                        //         user: UserModel(), amount: '');
                                      }
                                    },
                                    style: TextButton.styleFrom(
                                        primary: kWhiteColor,
                                        textStyle:
                                            const TextStyle(fontSize: 18)),
                                    child: const Text('Continue'),
                                  ),
                                );
                        }),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                  ],
                ))),
      ),
    );
  }
}
