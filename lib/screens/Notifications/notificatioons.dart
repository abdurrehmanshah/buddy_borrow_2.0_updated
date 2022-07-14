import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class NotificaitonScreen extends StatefulWidget {
  const NotificaitonScreen({Key? key}) : super(key: key);

  @override
  State<NotificaitonScreen> createState() => _NotificaitonScreenState();
}

class _NotificaitonScreenState extends State<NotificaitonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                SizedBox(width: Get.width * 0.23),
                const Text(
                  'Notifications',
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
            Expanded(
              child: SizedBox(
                width: Get.width,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                  children: [
                    NotificationContainer(
                        first: 'Loan Repayment',
                        second: 'Due: 12, May 2022',
                        third: '12:45 Pm',
                        icon: Icons.notifications),
                    NotificationContainer(
                        first: 'Loan Repayment',
                        second: 'Due: 12, May 2022',
                        third: '12:45 Pm',
                        icon: Icons.restore_page),
                    NotificationContainer(
                        first: 'Loan Repayment',
                        second: 'Due: 12, May 2022',
                        third: '12:45 Pm',
                        icon: Icons.notifications),
                  ],
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}

// ignore: must_be_immutable
class NotificationContainer extends StatelessWidget {
  NotificationContainer({
    required this.first,
    required this.second,
    required this.third,
    required this.icon,
    Key? key,
  }) : super(key: key);

  String first;
  String second;
  String third;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Container(
        height: Get.height * 0.08,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width * 0.04,
            ),
            Container(
              height: Get.height * 0.06,
              width: Get.height * 0.06,
              decoration:
                  BoxDecoration(color: kWhiteColor, shape: BoxShape.circle),
              child: Icon(
                icon,
                size: 30,
                color: kGreenColor,
              ),
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        first,
                        style: TextStyle(fontSize: 16, color: kBlackColor),
                      ),
                      const Spacer(),
                      Text(
                        third,
                        style: TextStyle(fontSize: 14, color: kGrey),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.005,
                ),
                Text(
                  second,
                  style: TextStyle(fontSize: 16, color: kGrey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
