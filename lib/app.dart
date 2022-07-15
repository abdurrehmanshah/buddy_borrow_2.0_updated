import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/material.dart';
import 'package:newbuddyborrow/screens/datemoneyservice/date_money_service.dart';
import 'package:newbuddyborrow/screens/interest/interest_web.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterestWeb(),
    );
  }
}
