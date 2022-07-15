import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/datemoneyservice/date_money_service.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';
import 'package:newbuddyborrow/webWidgets/web_textfield.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class InterestWeb extends StatefulWidget {
  const InterestWeb({super.key});

  @override
  State<InterestWeb> createState() => _InterestWebState();
}

class _InterestWebState extends State<InterestWeb> {
  double _value = 2.0;

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
                        height: Get.height * 0.04,
                      ),
                      SizedBox(
                        // height: Get.height * 0.4,
                        width: Get.width * 0.25,
                        child: Image.asset(
                          'assets/money1.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                  SizedBox(
                    width: Get.width * 0.26,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.12),
                        Text(
                          'Interest',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(height: Get.height * 0.01),
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
                                  Icons.local_convenience_store_outlined,
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

                                    icon: const Icon(Icons.keyboard_arrow_down),
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
                          height: Get.height * 0.04,
                        ),
                        Text(
                          'date money is to be repaid',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        SizedBox(height: Get.height * 0.01),
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
                                  Icons.currency_bitcoin_outlined,
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

                                    icon: const Icon(Icons.keyboard_arrow_down),
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
                          height: Get.height * 0.1,
                        ),
                        const CustomButtonWeb(
                          text: 'CONTINUE',
                          widdth: 0.23,
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: Get.width * .02,
                  // ),
                  SizedBox(
                    width: Get.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.17),
                        Container(
                          width: Get.width * 0.23,
                          height: Get.height * 0.07,
                          child: SfSlider(
                            min: 0.0,
                            max: 10.0,
                            value: _value,
                            interval: 1,
                            showTicks: true,
                            showLabels: true,
                            enableTooltip: true,
                            minorTicksPerInterval: 1,
                            onChanged: (dynamic value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
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
