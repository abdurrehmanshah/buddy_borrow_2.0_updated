// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/personal_loan_controller.dart';

import 'package:newbuddyborrow/mobileWidgets/custom_textfield.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/loan_description.dart';

import '../../../core/constants/constants.dart';

class LoanDetails extends StatefulWidget {
  const LoanDetails({Key? key}) : super(key: key);

  @override
  State<LoanDetails> createState() => _LoanDetailsState();
}

class _LoanDetailsState extends State<LoanDetails> {
  String dropdownvalue = 'Brother';

  // List of items in our dropdown menu
  var items = [
    'Brother',
    'Father',
    'Son',
    'Sister',
    'Other',
  ];
  @override
  Widget build(BuildContext context) {
    PersonalLoanControllers controller = Get.put(PersonalLoanControllers());
    final GlobalKey<FormState> _key = GlobalKey();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: scaffoldcolor,
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Get.to(const LoanAmountAndFee());
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
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Get.height / 1.5,
          width: Get.width,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kWhiteColor,
            boxShadow: [
              BoxShadow(
                color: kGrey,
                offset: const Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Form(
            key: _key,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text(
                      'Details',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                        text: 'Borrowers Name',
                        validator: (val) => controller.validateFtn(
                            val.toString(), 'Borrowers Name'),
                        emailController: controller.borrowersNameController,
                        isObsecure: false,
                        icon: const Icon(Icons.person)),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                        validator: (val) =>
                            controller.validateFtn(val.toString(), 'Address'),
                        text: 'Address',
                        emailController: controller.addresscontroller,
                        isObsecure: false,
                        icon: const Icon(Icons.home))
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                        validator: (val) =>
                            controller.validateFtn(val.toString(), 'Post Code'),
                        text: 'Postcode',
                        emailController: controller.postcodecontroller,
                        isObsecure: false,
                        icon: const Icon(Icons.message))
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: Get.width / 1.22,
                      height: Get.height / 15,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.01,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green[100],
                            radius: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.lan,
                                color: kBlackColor,
                                size: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.height * 0.12,
                          ),
                          Expanded(
                            child: DropdownButton<String>(
                              iconSize: 40,
                              iconDisabledColor: kBlackColor,
                              iconEnabledColor: kBlackColor,
                              value: dropdownvalue,
                              isDense: true,
                              underline: const SizedBox(),
                              isExpanded: true,
                              items: items.map((buildmenuItem)).toList(),
                              onChanged: (newvalue) {
                                setState(() {
                                  dropdownvalue = newvalue!;
                                });
                                controller.borrowerRelationShip.text =
                                    newvalue.toString();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        height: Get.height / 17,
                        width: Get.width / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kblueColor),
                        child: TextButton(
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              Get.to(const LoanDescription());
                            }
                          },
                          style: TextButton.styleFrom(
                              primary: kWhiteColor,
                              textStyle: const TextStyle(fontSize: 18)),
                          child: const Text('Continue'),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildmenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      );
}
