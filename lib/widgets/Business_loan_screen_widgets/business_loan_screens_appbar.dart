import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constants.dart';

class BusinessLoanAppBar extends StatelessWidget with PreferredSizeWidget {
  const BusinessLoanAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: scaffoldcolor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back),
        iconSize: 30,
        color: kBlackColor,
      ),
      title: const Text(
        'Business Loan Creator',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
