import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/mobileWidgets/personal_loan_screen_widgets/personal_loan_info_listTile2.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/loan_created_successfully.dart';

import '../../../mobileWidgets/personal_loan_screen_widgets/personal_loan_info_listTile1.dart';

class BusinessLoanInfo extends StatefulWidget {
  const BusinessLoanInfo({Key? key}) : super(key: key);

  @override
  State<BusinessLoanInfo> createState() => _BusinessLoanInfoState();
}

class _BusinessLoanInfoState extends State<BusinessLoanInfo> {
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
          'Business Loan Creator',
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
                              const CustomListTile(
                                title: 'Borrowers Name',
                                subtitle: 'Adam Scott',
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              const CustomListTile(
                                title: 'Address',
                                subtitle: '12 ST Down Town',
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              const CustomListTile(
                                title: 'RelationShip to the borrower',
                                subtitle: 'Brother',
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              const CustomListTile(
                                title: 'Interest Amount',
                                subtitle: 'Brother',
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              const CustomListTile(
                                title: 'Service Transferred',
                                subtitle: '20, May 2022',
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
                              const CustomListTile(
                                title: 'Postcode',
                                subtitle: '1234',
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
                              const CustomListTile(
                                title: 'Date of Return',
                                subtitle: '10, July 2022',
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
                      subtitle:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et nisl sit amet ex aliquet vestibulum.',
                    ),
                    CustomListStyle2(
                      screensize: screensize,
                      title: '',
                      subtitle:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et nisl sit amet ex aliquet vestibulum.',
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
                    Container(
                      height: Get.height / 17,
                      width: Get.width / 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kblueColor),
                      child: TextButton(
                        onPressed: () {
                          Get.to(const LoanCreated());
                        },
                        style: TextButton.styleFrom(
                            primary: kWhiteColor,
                            textStyle: const TextStyle(fontSize: 18)),
                        child: const Text('Continue'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ))),
      ),
    );
  }
}
