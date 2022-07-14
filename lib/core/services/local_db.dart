import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class LocalDb {
  static Future<void> setUserRecords({
    required String dbId,
    required String email,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('dbId', dbId);
    prefs.setString('email', email);
    // prefs.setString('name', name);
  }

  static Future<String?> getDbID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? userID = prefs.getString('dbId');

    return userID;
  }

  static Future<String?> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? userID = prefs.getString('email');

    return userID;
  }

  static Future<String?> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? userID = prefs.getString('name');

    return userID;
  }

  static Future<void> removeDbValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("dbId");
    prefs.remove("email");
    // prefs.remove("name");
  }

  static Future<bool> checkUserExists() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool checkValue = prefs.containsKey('dbId');
    log('Value: $checkValue');
    return checkValue;
  }
}
