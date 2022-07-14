import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/controllers/business_loan_controller.dart';

import 'package:newbuddyborrow/mobileWidgets/custom_textfield.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/interest.dart';

import '../../../core/constants/constants.dart';

class BusinessLoanDetails extends StatefulWidget {
  const BusinessLoanDetails({Key? key}) : super(key: key);

  @override
  State<BusinessLoanDetails> createState() => _BusinessLoanDetailsState();
}

class _BusinessLoanDetailsState extends State<BusinessLoanDetails> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    BusinessLoanController controller = Get.put(BusinessLoanController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: scaffoldcolor,
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
                      text: 'Postcode',
                      emailController: controller.postcodecontroller,
                      isObsecure: false,
                      icon: const Icon(Icons.message)),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: Get.width / 1.25,
                    height: Get.height / 17,
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
                          Get.to(const BusinessLoanInterest());
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
