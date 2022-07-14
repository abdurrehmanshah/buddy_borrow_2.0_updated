// ignore_for_file: file_names, unused_field, prefer_final_fields, avoid_print

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:newbuddyborrow/screens/contact_us.dart';

import 'package:newbuddyborrow/screens/dasboard/dashboard.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/loan_creator_get_started.dart';

class ReturnNavBar extends StatefulWidget {
  const ReturnNavBar({Key? key}) : super(key: key);

  @override
  State<ReturnNavBar> createState() => _ReturnNavBarState();
}

class _ReturnNavBarState extends State<ReturnNavBar> {
  @override
  Widget build(BuildContext context) {
    return const CurvedNavBar();
  }
}

class CurvedNavBar extends StatefulWidget {
  const CurvedNavBar({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  Widget _callPage(int currentIndex) {
    switch (currentIndex) {
      case 1:
        return const ContactUs();
      case 2:
        return const LoanCreatorGetStarted();

      default:
        return const Dashboard();
    }
  }

  int _index = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _callPage(_index),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: _index,
        color: const Color(0xFF87C8EE),
        backgroundColor: const Color(0xFFE7E7E7),
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          CircleAvatar(
            backgroundColor: const Color(0xFF87C8EE),
            radius: 20,
            child: Image.asset(
              'assets/Path.png',
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xFF87C8EE),
            radius: 20,
            child: Image.asset('assets/widget.png', color: Colors.white),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xFF87C8EE),
            radius: 20,
            child: Image.asset('assets/loan.png', color: Colors.white),
          ),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
            print(index);
          });
        },
      ),
    );
  }
}
