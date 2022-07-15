import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/webWidgets/custom_botton_web.dart';
import 'package:newbuddyborrow/webWidgets/green_bottom_container.dart';

class MileStoreRepaymentWeb extends StatefulWidget {
  const MileStoreRepaymentWeb({super.key});

  @override
  State<MileStoreRepaymentWeb> createState() => _MileStoreRepaymentWebState();
}

class _MileStoreRepaymentWebState extends State<MileStoreRepaymentWeb> {
  TextEditingController _firstnamecontroller = TextEditingController();
  TextEditingController _middlecontroller = TextEditingController();
  TextEditingController _surnamecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _postcodecontroller = TextEditingController();
  TextEditingController _emmailcontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  @override
  void initState() {
    _firstnamecontroller = TextEditingController();
    _middlecontroller = TextEditingController();
    _surnamecontroller = TextEditingController();
    _phonecontroller = TextEditingController();
    _postcodecontroller = TextEditingController();
    _emmailcontroller = TextEditingController();
    _addresscontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstnamecontroller.dispose();
    _middlecontroller.dispose();
    _surnamecontroller.dispose();
    _phonecontroller.dispose();
    _postcodecontroller.dispose();
    _emmailcontroller.dispose();
    _addresscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    @override
    DateTime selecteddDate = DateTime.now();

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
                        height: Get.height * 0.35,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width * 0.025,
                            ),
                            Text(
                              'Mile Stone Repayment',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    useSafeArea: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        insetPadding: const EdgeInsets.all(10),
                                        actionsPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        content: Container(
                                          height: Get.height * 0.7,
                                          width: Get.width * 0.22,
                                          decoration: BoxDecoration(
                                            color: kWhiteColor,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: Get.height * 0.01),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      width: Get.width * 0.01),
                                                  InkWell(
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                    child: const Icon(
                                                      Icons.close,
                                                      color: Colors.grey,
                                                      size: 35,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.01),
                                                ],
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.15,
                                                child: Image.asset(
                                                  'assets/milestone2.png',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: Get.height * 0.02),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.02),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'Stage',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Get.width * 0.18,
                                                  height: Get.height * 0.06,
                                                  child: TextField(
                                                      // controller: nameController,
                                                      autocorrect: false,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: const TextStyle(
                                                          fontSize: 18,
                                                          decoration:
                                                              TextDecoration
                                                                  .none),
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'stage',
                                                        hintStyle: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors
                                                                .grey.shade500),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.grey
                                                                  .shade500),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.grey
                                                                  .shade500),
                                                        ),
                                                      ))),
                                              SizedBox(
                                                  height: Get.height * 0.02),
                                              SizedBox(
                                                  height: Get.height * 0.02),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.02),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'date to be paid',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Get.width * 0.18,
                                                  height: Get.height * 0.06,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          '${selecteddDate.day}-${selecteddDate.month}-${selecteddDate.year}'),
                                                      InkWell(
                                                        onTap: () {
                                                          selectdDate(context);
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .calendar_month_outlined,
                                                          color: kblueColor,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              SizedBox(
                                                  height: Get.height * 0.02),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.02),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'Description',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Get.width * 0.18,
                                                  height: Get.height * 0.06,
                                                  child: TextField(
                                                      // controller: codeController,
                                                      autocorrect: false,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: const TextStyle(
                                                          fontSize: 18,
                                                          decoration:
                                                              TextDecoration
                                                                  .none),
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'description',
                                                        hintStyle: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors
                                                                .grey.shade500),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.grey
                                                                  .shade500),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.grey
                                                                  .shade500),
                                                        ),
                                                      ))),
                                              SizedBox(
                                                  height: Get.height * 0.04),
                                              RoundedTextButtonWeb(
                                                text: 'Add Stage',
                                                width: 0.17,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                height: Get.height * 0.06,
                                width: Get.width * 0.17,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      width: 2,
                                      color: kGreenColor,
                                    )),
                                child: Center(
                                  child: Text(
                                    'Add New Stage',
                                    style: TextStyle(color: kGreenColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: Get.width * 0.28,
                          height: Get.height * 0.6,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.symmetric(
                                horizontal: Get.width * 0.015),
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Container(
                                  height: Get.height * 0.19,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: Get.width * 0.01,
                                        vertical: Get.width * 0.005),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Stage : ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: kGrey,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            AutoSizeText('1',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(
                                              width: Get.width * 0.06,
                                            ),
                                            Text(
                                              'Date to be paid : ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: kGrey,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            AutoSizeText('16-09-2022',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.01,
                                        ),
                                        TextColumnWeb(
                                            width: 0.25,
                                            first: 'Description',
                                            second:
                                                'lorem ipsum dolor color sit amet consector f lorem ipsum dolor color sit amet consector f lorem ipsum dolor color sit amet consector f lorem ipsumdolor sit color sit amet consector f',
                                            ftweight: FontWeight.normal)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Container(
                                  height: Get.height * 0.19,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: Get.width * 0.01,
                                        vertical: Get.width * 0.005),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Stage : ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: kGrey,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            AutoSizeText('1',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(
                                              width: Get.width * 0.06,
                                            ),
                                            Text(
                                              'Date to be paid : ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: kGrey,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            AutoSizeText('16-09-2022',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.01,
                                        ),
                                        TextColumnWeb(
                                            width: 0.25,
                                            first: 'Description',
                                            second:
                                                'lorem ipsum dolor color sit amet consector f lorem ipsum dolor color sit amet consector f lorem ipsum dolor color sit amet consector f lorem ipsumdolor sit color sit amet consector f',
                                            ftweight: FontWeight.normal)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Container(
                                  height: Get.height * 0.19,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: Get.width * 0.01,
                                        vertical: Get.width * 0.005),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Stage : ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: kGrey,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            AutoSizeText('1',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(
                                              width: Get.width * 0.06,
                                            ),
                                            Text(
                                              'Date to be paid : ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: kGrey,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            AutoSizeText('16-09-2022',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.01,
                                        ),
                                        TextColumnWeb(
                                            width: 0.25,
                                            first: 'Description',
                                            second:
                                                'lorem ipsum dolor color sit amet consector f lorem ipsum dolor color sit amet consector f lorem ipsum dolor color sit amet consector f lorem ipsumdolor sit color sit amet consector f',
                                            ftweight: FontWeight.normal)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.015,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Get.width * 0.016,
                          ),
                          child: const CustomButtonWeb(
                            text: 'CONTINUE',
                            widdth: 0.25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            const BottomGreenContainer(),

            // const BottomGreenContainer(),
          ],
        ),
      )),
    );
  }
}

// ignore: must_be_immutable
class RoundedTextButtonWeb extends StatelessWidget {
  RoundedTextButtonWeb({
    required this.width,
    required this.text,
    Key? key,
  }) : super(key: key);
  double width;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * width,
      decoration: BoxDecoration(
        color: kblueColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: kWhiteColor),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextColumnWeb extends StatelessWidget {
  TextColumnWeb({
    required this.width,
    required this.first,
    required this.second,
    required this.ftweight,
    Key? key,
  }) : super(key: key);

  // double height;
  double width;
  String first;
  String second;
  FontWeight ftweight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: Get.height * height,
      width: Get.width * width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            first,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13,
              color: kGrey,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: Get.height * 0.005,
          ),
          AutoSizeText(
            second,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13,
              color: kBlackColor,
              fontWeight: ftweight,
            ),
          )
        ],
      ),
    );
  }
}
