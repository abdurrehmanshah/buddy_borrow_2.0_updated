import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BusinessLoanController extends GetxController {
  late TextEditingController loanAmountcontroller;
  late TextEditingController feeAmountcontroller;
  late TextEditingController loanRepaymentscontroller;
  late TextEditingController borrowersNameController;
  late TextEditingController addresscontroller;
  late TextEditingController postcodecontroller;
  late TextEditingController loanDescriptionController;
  // New
  late TextEditingController descriptionController1;
  late TextEditingController percentageController1;

  late TextEditingController descriptionController2;
  late TextEditingController percentageController2;

  @override
  void onInit() {
    loanAmountcontroller = TextEditingController();
    feeAmountcontroller = TextEditingController();
    loanRepaymentscontroller = TextEditingController();
    borrowersNameController = TextEditingController();
    addresscontroller = TextEditingController();
    postcodecontroller = TextEditingController();
    loanDescriptionController = TextEditingController();

// New
    descriptionController1 = TextEditingController();
    percentageController1 = TextEditingController();
    descriptionController2 = TextEditingController();
    percentageController2 = TextEditingController();

    super.onInit();
  }
}
