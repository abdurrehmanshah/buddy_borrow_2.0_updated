import 'package:flutter/material.dart';
import 'package:newbuddyborrow/core/others/dashboard_bottom_navigation_bar.dart';
import 'package:newbuddyborrow/screens/sign_in_up.dart';

import '../core/services/local_db.dart';

class MobileRoot extends StatelessWidget {
  const MobileRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LocalDb.checkUserExists(),
      initialData: const [],
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const CircularProgressIndicator();
        } else if (snapshot.data == true) {
          return const ReturnNavBar();
        } else {
          return const SignInOrUp();
        }
      },
    );
  }
}
