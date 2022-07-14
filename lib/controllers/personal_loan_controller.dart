import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:newbuddyborrow/core/enums/process_status.dart';
import 'package:newbuddyborrow/core/models/loan_models/personal_loan_model.dart';
import 'package:newbuddyborrow/core/others/notification_snackbar.dart';
import 'package:newbuddyborrow/core/services/db_service.dart';
import 'package:newbuddyborrow/screens/loan_creator_screens/Personal_loan_screens/loan_created_successfully.dart';

class PersonalLoanControllers extends GetxController {
  late TextEditingController loanAmountcontroller;
  late TextEditingController feeAmountcontroller;
  late TextEditingController loanRepaymentscontroller;
  late TextEditingController borrowersNameController;
  late TextEditingController addresscontroller;
  late TextEditingController postcodecontroller;
  late TextEditingController loanDescriptionController;
  late TextEditingController interestAmountController;
  late TextEditingController nonPaymentInterestAmountController;
  late TextEditingController borrowerRelationShip;

  Timestamp? moneyTransferDate;
  Timestamp? repaymentDate;

  late String feePayer;
  bool isLoading = false;
  @override
  void onInit() {
    loanAmountcontroller = TextEditingController();
    feeAmountcontroller = TextEditingController();
    loanRepaymentscontroller = TextEditingController();
    borrowersNameController = TextEditingController();
    addresscontroller = TextEditingController();
    postcodecontroller = TextEditingController();
    loanDescriptionController = TextEditingController();
    interestAmountController = TextEditingController();
    nonPaymentInterestAmountController = TextEditingController();
    borrowerRelationShip = TextEditingController();

    moneyTransferDate = Timestamp.now();
    repaymentDate = Timestamp.now();
    feePayer = 'borrower';
    super.onInit();
  }

  String? validateFtn(String fieldValue, String text) {
    if (fieldValue.isEmpty) {
      return "Please add $text";
    } else {
      return null;
    }
  }

  createPersonalLoan(String dbId) async {
    isLoading = true;
    update();
    PersonalLoanModel personalLoan = PersonalLoanModel();
    personalLoan.feeAmount = feeAmountcontroller.text;
    personalLoan.feePayer = feePayer;
    personalLoan.interestAmount = interestAmountController.text;
    personalLoan.loanAmount = loanAmountcontroller.text;
    personalLoan.loanDetails = loanDescriptionController.text;
    personalLoan.loanRepaymentAmount = loanRepaymentscontroller.text;
    personalLoan.nonPaymentInterestAmount =
        nonPaymentInterestAmountController.text;
    personalLoan.repaymentDate = repaymentDate;
    personalLoan.transferDate = moneyTransferDate;

    personalLoan.borrower = borrowersNameController.text;
    personalLoan.borrowerRelationShip = borrowerRelationShip.text;

    personalLoan.address = addresscontroller.text;
    personalLoan.postalCode = postcodecontroller.text;

    final status = await DbService()
        .createPersonalLoan(personalLoan: personalLoan, dbId: dbId);
    if (status == ProcessStatus.compeleted) {
      isLoading = false;
      update();

      Get.off(() => const LoanCreated());
    } else if (status == ProcessStatus.failed) {
      isLoading = false;
      update();

      kNotificationSnackbar('Failure', "Failed to Process Payment", null);
    }
  }
}
