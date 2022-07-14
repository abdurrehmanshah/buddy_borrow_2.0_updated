import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:newbuddyborrow/controllers/personal_loan_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/money_transfer_date.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class InterestAmount extends StatefulWidget {
  const InterestAmount({Key? key}) : super(key: key);

  @override
  State<InterestAmount> createState() => _InterestAmountState();
}

class _InterestAmountState extends State<InterestAmount> {
  final _controller = Get.put(PersonalLoanControllers());
  double _value = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Get.to(const Interest());
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: kBlackColor,
        ),
        title: const Text(
          'Personal Loan Creator',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: scaffoldcolor,
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.1,
          ),
          Image.asset('assets/money.png'),
          const Spacer(),
          Container(
            height: Get.height / 2,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: kWhiteColor),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Want to Apply for Interest?',
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  Text(
                    'Interest Amount',
                    style: TextStyle(
                        color: kGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  StatefulBuilder(
                    builder: ((context, setState) => SfSlider(
                        min: 0.0,
                        max: 10.0,
                        enableTooltip: true,
                        showLabels: true,
                        showTicks: true,
                        interval: 1,
                        value: _value,
                        numberFormat: NumberFormat(""),
                        onChanged: (newValue) {
                          setState(() {
                            _value = newValue;
                          });
                          _controller.interestAmountController.text =
                              double.parse(newValue.toString())
                                  .toStringAsFixed(2);
                        })),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  const CustomTextButton(
                    text: 'Continue',
                    screen: MoneyTransferDate(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String? text;
  final Widget? screen;
  const CustomTextButton({
    this.screen,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 17,
      width: Get.width / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF5BB6EB)),
      child: TextButton(
        onPressed: () {
          Get.to(screen);
        },
        style: TextButton.styleFrom(
            primary: Colors.white, textStyle: const TextStyle(fontSize: 18)),
        child: Text(text.toString()),
      ),
    );
  }
}
