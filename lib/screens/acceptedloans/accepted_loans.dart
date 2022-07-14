// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/replaymintIn/replaymint_in.dart';

import '../../mobileWidgets/dashboard_screen_widgets/dashboard_container2.dart';

class AcceptedLoans extends StatefulWidget {
  const AcceptedLoans({Key? key}) : super(key: key);

  @override
  State<AcceptedLoans> createState() => _AcceptedLoansState();
}

class _AcceptedLoansState extends State<AcceptedLoans>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tab = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: scaffoldcolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back, size: 30)),
                    SizedBox(
                      width: Get.width * 0.15,
                    ),
                    Text(
                      "Accepted Loans",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFD4E6F1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TabBar(
                          unselectedLabelColor: kBlackColor,
                          controller: tab,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF5BB6EB),
                          ),
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 45),
                          tabs: const [
                            Tab(
                              child: Text('Active'),
                            ),
                            Tab(
                              child: Text('Completed'),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tab,
                          children: [
                            SizedBox(
                              width: Get.width * 0.9,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Get.width * 0.06),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Created Loans',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: Get.width * 0.95,
                                        height: Get.height * .5,
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  Get.to(const ReplaymentIn());
                                                },
                                                child:
                                                    const DashboardContainer2()),
                                            InkWell(
                                                onTap: () {
                                                  Get.to(const ReplaymentIn());
                                                },
                                                child:
                                                    const DashboardContainer2()),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.5,
                              width: Get.width * 0.8,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: const [
                                        //here is the second container of page accepted loans which has not been described in the prototyping of the app
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
