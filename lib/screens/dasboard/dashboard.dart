// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:newbuddyborrow/controllers/user_controller.dart';

import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:newbuddyborrow/screens/Notifications/notificatioons.dart';
import 'package:newbuddyborrow/screens/acceptedloans/accepted_loans.dart';

import '../../mobileWidgets/dashboard_screen_widgets/dashboard_container1.dart';
import '../../mobileWidgets/dashboard_screen_widgets/dashboard_container2.dart';
import '../../mobileWidgets/dashboard_screen_widgets/dashboard_listTile.dart';
import '../loandetails/loan_details.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(UserController());
    TabController tab = TabController(length: 2, vsync: this);
    Size screensize = MediaQuery.of(context).size;

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
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      child: CircleAvatar(
                          radius: 22,
                          backgroundImage: CachedNetworkImageProvider(
                              _controller.user.userImageUrl.toString(),
                              scale: 0.5)),
                    ),
                    const Spacer(),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(const NotificaitonScreen());
                      },
                      child: Icon(
                        Icons.notifications_active_rounded,
                        color: kBlackColor,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.04,
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
                              const EdgeInsets.symmetric(horizontal: 40),
                          tabs: const [
                            Tab(
                              child: Text('LENDED'),
                            ),
                            Tab(
                              child: Text('BORROWED'),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tab,
                          children: [
                            SizedBox(
                              height: Get.height * 0.5,
                              width: Get.width / 1.5,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.015,
                                    ),
                                    const Text(
                                      'Lending loan status',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(const AcceptedLoans());
                                          },
                                          child: DashboardContainer(
                                              asset: 'assets/Json/check.json',
                                              text: 'Accepted'),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: DashboardContainer(
                                              asset: 'assets/Json/waiting.json',
                                              text: 'Pending'),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            'Created Loans',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22),
                                          ),
                                        ),
                                      ],
                                    ),
                                    for (var i = 0; i < 8; i++)
                                      InkWell(
                                          onTap: () {
                                            Get.to(const LoanDetails());
                                          },
                                          child: const DashboardContainer2()),
                                    const SizedBox(
                                      height: 100,
                                    ),
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
                                      children: [
                                        SizedBox(
                                          height: Get.height * 0.015,
                                        ),
                                        Text(
                                          'Borrowing Loan Status',
                                          style: TextStyle(
                                              color: kBlackColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.5),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(25.0),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                height: Get.height / 7,
                                                width: Get.width / 1.2,
                                                child: ListTile(
                                                  isThreeLine: true,
                                                  minVerticalPadding: 15,
                                                  tileColor: kWhiteColor,
                                                  leading: SizedBox(
                                                    // height:
                                                    // screensize.height * 0.1,
                                                    width: screensize.width / 5,
                                                    child: Lottie.asset(
                                                        'assets/Json/check.json',
                                                        fit: BoxFit.fitWidth),
                                                  ),
                                                  title: Text(
                                                    'Accepted',
                                                    style: TextStyle(
                                                        color: kBlackColor,
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  subtitle: const Text(
                                                    'Lorem ipsum dolor sit amet, adipescing elit',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        Text(
                                          'Pending Loan Approval',
                                          style: TextStyle(
                                              color: kBlackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.015,
                                        ),
                                        for (var i = 0; i < 8; i++)
                                          DashboardListTile(
                                            screensize: screensize,
                                            name: 'Alex Jack',
                                            loan_type: 'Personal',
                                          ),

                                        // ListView.builder(
                                        //     scrollDirection: Axis.vertical,
                                        //     shrinkWrap: true,
                                        //     itemCount: 8,
                                        //     itemBuilder: (BuildContext context,
                                        //         int index) {
                                        //       return DashboardListTile(
                                        //         screensize: screensize,
                                        //         name: 'Alex Jack',
                                        //         loan_type: 'Personal',
                                        //       );
                                        //     }),
                                        const SizedBox(
                                          height: 100,
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
