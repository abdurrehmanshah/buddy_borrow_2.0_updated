import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/loan_type.dart';

class LoanCreatorGetStarted extends StatefulWidget {
  const LoanCreatorGetStarted({Key? key}) : super(key: key);

  @override
  State<LoanCreatorGetStarted> createState() => _LoanCreatorGetStartedState();
}

class _LoanCreatorGetStartedState extends State<LoanCreatorGetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldcolor,
        appBar: AppBar(
          backgroundColor: scaffoldcolor,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Image.asset('assets/MaskGroup13.png'),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.notifications, color: kBlackColor, size: 25),
              ),
            )
          ],
          title: const Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: Text(
              'Loan Creator',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    height: Get.height * 0.4,
                    width: Get.width,
                    image: const AssetImage(
                      'assets/MaskGroup17.png',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Center(
                      child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus dolor quis orci gravida, ut blandit risus consectetur. Pellentesque ut ullamcorper neque, quis pharetra arcu.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: Get.height * 0.06,
                    width: Get.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kGreenColor),
                    child: TextButton(
                        onPressed: () {
                          Get.to(const LoanType());
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 20,
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
