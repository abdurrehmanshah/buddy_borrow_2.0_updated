import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:newbuddyborrow/controllers/user_controller.dart';

import '../root/mobile_root.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double angle = 0.0;
  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 3), (timer) {
      if (angle < 6.24) {
        setState(() {
          angle += 0.08;
        });
      } else {
        timer.cancel();
        Get.to(const MobileRoot());
      }
    });
    super.initState();
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    await Get.put(UserController()).getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Transform.rotate(
            angle: angle,
            child: Image.asset(
              "assets/BBLogo.png",
              fit: BoxFit.contain,
              width: Get.width * 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
