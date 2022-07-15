import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';
import 'package:newbuddyborrow/webWidgets/web_textfield.dart';

class LoanAmountFeeDetailsWeb extends StatefulWidget {
  const LoanAmountFeeDetailsWeb({super.key});

  @override
  State<LoanAmountFeeDetailsWeb> createState() =>
      _LoanAmountFeeDetailsWebState();
}

class _LoanAmountFeeDetailsWebState extends State<LoanAmountFeeDetailsWeb> {
  TextEditingController _borrowernamecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _loanamountcontroller = TextEditingController();
  TextEditingController _feeamountcontroller = TextEditingController();
  TextEditingController _loanrepaymentcontroller = TextEditingController();
  TextEditingController _postcodecontroller = TextEditingController();
  @override
  void initState() {
    _borrowernamecontroller = TextEditingController();
    _addresscontroller = TextEditingController();
    _loanamountcontroller = TextEditingController();
    _feeamountcontroller = TextEditingController();
    _postcodecontroller = TextEditingController();
    _loanrepaymentcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _borrowernamecontroller.dispose();
    _loanamountcontroller.dispose();
    _loanrepaymentcontroller.dispose();
    _feeamountcontroller.dispose();
    _postcodecontroller.dispose();
    _addresscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    DateTime selecteddDate = DateTime.now();

    // ignore: unused_element
    Future<void> selectdDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selecteddDate,
        firstDate: DateTime(2015, 8, 3),
        lastDate: DateTime(2101, 3, 5),
      );

      if (picked != null && picked != selecteddDate) {
        setState(() {
          selecteddDate = picked;
        });
      }
    }
    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.09,
              width: Get.width,
              color: kblueColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.1,
                      child: Image.asset(
                        'assets/Borrow.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: Get.width * 0.09,
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white30,
                          ),
                          child: Center(
                            child: Text(
                              'LOAN CREATER',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    Container(
                        width: Get.width * 0.09,
                        height: Get.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'BORROWED',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        )),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: Get.width * 0.09,
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'LENDED',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    Container(
                        width: Get.width * 0.09,
                        height: Get.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'ESCALATE',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Icon(
                      Icons.notifications,
                      color: kWhiteColor,
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Icon(
                      Icons.account_circle_rounded,
                      color: kWhiteColor,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(
                              width: Get.width * 0.01,
                            ),
                            const Text(
                              'BACK',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      SizedBox(
                        height: Get.height * 0.3,
                        child: Image.asset(
                          'assets/milestone2.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.06),
                  SizedBox(
                    width: Get.width * 0.55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.height * 0.12),
                            Text(
                              'Loan Amount, Fee & Details',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor),
                            ),
                            SizedBox(height: Get.height * 0.02),
                            LoginTextFieldWeb(
                              hint: 'Borrower\'s name',
                              icon: Icons.person,
                              controller: _borrowernamecontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'Address',
                              icon: Icons.location_on_rounded,
                              controller: _addresscontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            LoginTextFieldWeb(
                              hint: 'Post Code',
                              icon: Icons.pin_drop_outlined,
                              controller: _postcodecontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.015),
                            Container(
                              width: Get.width * 0.23,
                              height: Get.height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: kWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.width * 0.01,
                                  ),
                                  Container(
                                    height: Get.height * 0.05,
                                    width: Get.height * 0.05,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green.shade50),
                                    child: const Icon(
                                      Icons.loop_outlined,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.01,
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.17,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        value: dropdownvalue,

                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        items: items.map((String items) {
                                          return DropdownMenuItem(
                                            value: items,
                                            alignment: Alignment.centerLeft,
                                            child: Text(items),
                                          );
                                        }).toList(),
                                        // After selecting the desired option,it will
                                        // change button value to selected value
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownvalue = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                           
                            const CustomButtonWeb(
                              text: 'CONTINUE',
                              widdth: 0.23,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.height * 0.168),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Pounds that are lent or agreed',
                                style: TextStyle(color: kGrey, fontSize: 12),
                              ),
                            ),
                            LoginTextFieldWeb(
                              hint: 'loan amount',
                              icon: Icons.euro,
                              controller: _loanamountcontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.02),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Fee if lender pays',
                                style: TextStyle(color: kGrey, fontSize: 12),
                              ),
                            ),
                            LoginTextFieldWeb(
                              hint: 'fee amount',
                              icon: Icons.euro,
                              controller: _feeamountcontroller,
                              isObscure: false,
                            ),
                            SizedBox(height: Get.height * 0.02),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Per month of fixed payment date',
                                style: TextStyle(color: kGrey, fontSize: 12),
                              ),
                            ),
                            LoginTextFieldWeb(
                              hint: 'loan repayment',
                              icon: Icons.euro,
                              controller: _loanrepaymentcontroller,
                              isObscure: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            const BottomGreenContainer(),
          ],
        ),
      )),
    );
  }
}
