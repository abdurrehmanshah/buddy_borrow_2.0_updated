// ignore_for_file: file_names, unused_local_variable, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:newbuddyborrow/controllers/business_loan_controller.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Business_loan_screens/loan_amount_and_fee.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/Business_loan_screen_widgets/business_loan_screens_appbar.dart';
import '../../../widgets/Business_loan_screen_widgets/milestone_repayment_screen_widgets.dart';

class MileStoneRepayment extends StatefulWidget {
  const MileStoneRepayment({Key? key}) : super(key: key);

  @override
  State<MileStoneRepayment> createState() => _MileStoneRepaymentState();
}

class _MileStoneRepaymentState extends State<MileStoneRepayment> {
  DateTime currentDate = DateTime.now();
  DateTime currentdate2 = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.yMMMd().format(currentDate);
    String formattedDate2 = DateFormat.yMMMd().format(currentdate2);

    final screensize = MediaQuery.of(context).size;
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();

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
      }
    }

    BusinessLoanController controller = Get.put(BusinessLoanController());
    return Scaffold(
      appBar: BusinessLoanAppBar(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: scaffoldcolor,
          child: Column(
            children: [
              Image.asset(
                'assets/milestone.png',
                height: 120,
                width: 210,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Mile Stone Repayment',
                          style: TextStyle(fontSize: 15),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: Get.width / 3,
                              color: kGrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '1st Stage',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 1,
                              width: width / 3,
                              color: const Color(0xff707070),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        DescriptionTextField(
                            height: height,
                            width: width,
                            controller: controller.descriptionController1),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        PercentageTextField(
                            controller: controller.percentageController1),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          height: Get.height / 15,
                          width: Get.width / 0.357,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: scaffoldcolor,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child:
                                      Image.asset('assets/calendar-check.png'),
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.05,
                              ),
                              Text(
                                formattedDate.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.4,
                              ),
                              Flexible(
                                child: InkWell(
                                    onTap: () {
                                      selectDate(context);
                                    },
                                    child:
                                        Image.asset('assets/calendar-alt.png')),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: width / 3,
                              color: kGrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '2nd Stage',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 1,
                              width: width / 3,
                              color: kGrey,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        DescriptionTextField(
                          height: height,
                          width: width,
                          controller: controller.descriptionController2,
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        PercentageTextField(
                            controller: controller.percentageController2),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: height / 15,
                          width: width / 0.357,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: scaffoldcolor,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child:
                                      Image.asset('assets/calendar-check.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Text(
                                formattedDate2.toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 120,
                              ),
                              Flexible(
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectDate2(context);
                                      });
                                    },
                                    child:
                                        Image.asset('assets/calendar-alt.png')),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: 45,
                            width: width / 0.357,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(color: const Color(0xff92E592))),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.add,
                                    color: Color(0xff92E592),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Add New Stage',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff92E592)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          height: Get.height / 16,
                          width: Get.width / 1.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: kblueColor),
                          child: TextButton(
                            onPressed: () {
                              Get.to(const BusinessLoanAmountandFee());
                            },
                            style: TextButton.styleFrom(
                                primary: kWhiteColor,
                                textStyle: const TextStyle(fontSize: 18)),
                            child: const Text('Continue'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
