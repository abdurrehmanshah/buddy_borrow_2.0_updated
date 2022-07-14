import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/mobileWidgets/custom_button.dart';

import '../../core/constants/constants.dart';

class TapbarPage extends StatefulWidget {
  const TapbarPage({Key? key}) : super(key: key);

  @override
  State<TapbarPage> createState() => _TapbarPageState();
}

class _TapbarPageState extends State<TapbarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        body: SafeArea(
            child: Container(
          height: Get.height,
          width: Get.width,
          color: kWhiteColor,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: Get.width * 0.04),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: kBlackColor,
                      size: 30,
                    )),
                SizedBox(width: Get.width * 0.13),
                const Text(
                  'Share buddy borrow',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            SizedBox(
              width: Get.width * 0.8,
              height: Get.height * 0.08,
              child: TabBar(
                labelColor: kblueColor,
                unselectedLabelColor: kBlackColor,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
                indicatorWeight: 3,
                tabs: const <Widget>[
                  Tab(
                    text: 'Invite',
                  ),
                  Tab(
                    text: 'Referrals',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.55,
              width: Get.width * 0.85,
              // color: kblueColor,
              child: TabBarView(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: Get.height * 0.5,
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],

                                // color: kBlackColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    '\$12',
                                    style: TextStyle(
                                        fontSize: 35, color: kGreenColor),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.005,
                                  ),
                                  Text(
                                    'Referral Balance',
                                    style: TextStyle(
                                        fontSize: 12, color: kBlackColor),
                                  ),
                                  SizedBox(height: Get.height * 0.01),
                                  const Icon(
                                    Icons.currency_exchange_rounded,
                                    size: 50,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  Text(
                                    'Refer friends and earn cash discount while\npaying the loan fee',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 13, color: kblueColor),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.share,
                                        color: Colors.deepOrange,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.03,
                                      ),
                                      Text(
                                        'Share buddy borrow with friends',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13, color: kblueColor),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group_add_outlined,
                                        color: Colors.pink.shade200,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.03,
                                      ),
                                      Text(
                                        'Your friend succesfully Gets Sign up',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13, color: kblueColor),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.card_giftcard_rounded,
                                        color: Colors.purple,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.03,
                                      ),
                                      Text(
                                        'You will get rewards',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13, color: kblueColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: Get.height * 0.5,
                            width: Get.width,
                            color: kWhiteColor,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.05),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Current Sharing Rewards',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12, color: kBlackColor),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  RefferalContainer(
                                      nameCharacters: 'KS',
                                      name: 'Kathrin Smith',
                                      dollars: '3'),
                                  RefferalContainer(
                                      nameCharacters: 'DK',
                                      name: 'David Kamron',
                                      dollars: '9'),
                                  RefferalContainer(
                                      nameCharacters: 'CR',
                                      name: 'Crystal Rousy',
                                      dollars: '12'),
                                  RefferalContainer(
                                      nameCharacters: 'MM',
                                      name: 'Martin Marsh',
                                      dollars: '5'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              'Share buddy borrow now',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: Get.height * 0.06,
                    width: Get.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        Icon(
                          Icons.whatsapp,
                          color: kWhiteColor,
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        Text(
                          'via WhatsApp',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: kWhiteColor),
                        ),
                      ],
                    )),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Container(
                    height: Get.height * 0.06,
                    width: Get.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/download.png',
                      fit: BoxFit.fitHeight,
                    )),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Container(
                    height: Get.height * 0.06,
                    width: Get.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade200),
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(
                      Icons.share,
                      color: kGreenColor,
                    )),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const CustomButton(text: 'Invite Now'),
          ]),
        )),
      ),
    );
  }
}

// ignore: must_be_immutable
class RefferalContainer extends StatelessWidget {
  RefferalContainer({
    required this.nameCharacters,
    required this.name,
    required this.dollars,
    Key? key,
  }) : super(key: key);
  String nameCharacters;
  String name;
  String dollars;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: Get.height * 0.05,
            width: Get.height * 0.05,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.pink.shade200),
            child: Center(
              child: Text(
                nameCharacters,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: kWhiteColor),
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.03,
          ),
          Text(
            name,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14, color: kBlackColor),
          ),
          const Spacer(),
          Text(
            '\$$dollars',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 16, color: kGreenColor),
          ),
        ],
      ),
    );
  }
}
