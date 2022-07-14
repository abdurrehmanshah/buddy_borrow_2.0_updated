import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/material.dart';
import 'package:newbuddyborrow/screens/Loan_creater_web/loan_creater_web.dart';
import 'package:newbuddyborrow/screens/security_question_web/security_questions_web.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoanCreaterWeb(),
    );
  }
}
