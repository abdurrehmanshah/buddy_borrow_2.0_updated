import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/material.dart';
import 'package:newbuddyborrow/screens/borrowersnameweb/borrowers_name_web.dart';
import 'package:newbuddyborrow/screens/dasboard/dashboard.dart';
import 'package:newbuddyborrow/screens/myprofile/my_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: MyProfile());
  }
}
