import 'package:cloud_firestore/cloud_firestore.dart';

class PersonalLoanModel {
  String? borrower;
  String? address;
  String? loanAmount;

  String? postalCode;
  String? borrowerRelationShip;

  String? feeAmount;
  String? loanRepaymentAmount;
  String? loanDetails;

// Interest
  String? interestAmount;

  Timestamp? transferDate;
  Timestamp? repaymentDate;

  String? nonPaymentInterestAmount;

  String? feePayer;

  PersonalLoanModel(
      {this.feeAmount,
      this.feePayer,
      this.interestAmount,
      this.loanAmount,
      this.loanDetails,
      this.loanRepaymentAmount,
      this.nonPaymentInterestAmount,
      this.repaymentDate,
      this.transferDate});

  toFirebase() {
    return {
      'borrower': borrower,
      'address': address,
      'postalCode': postalCode,
      'borrowerRelationShip': borrowerRelationShip,
      'feeAmount': feeAmount,
      'feePayer': feePayer,
      'interestAmount': interestAmount,
      'loanAmount': loanAmount,
      'loanDetails': loanDetails,
      'loanRepaymentAmount': loanRepaymentAmount,
      'nonPaymentInterestAmount': nonPaymentInterestAmount,
      'repaymentDate': repaymentDate,
      'transferDate': transferDate,
    };
  }

  PersonalLoanModel.fromFirebase({firebase}) {
    borrower = firebase['borrower'];
    borrowerRelationShip = firebase['borrowerRelationShip'];

    address = firebase['address'];
    postalCode = firebase['postalCode'];

    feeAmount = firebase['feeAmount'];
    feePayer = firebase['feePayer'];
    interestAmount = firebase['interestAmount'];
    loanAmount = firebase['loanAmount'];
    loanDetails = firebase['loanDetails'];
    loanRepaymentAmount = firebase['loanRepaymentAmount'];
    nonPaymentInterestAmount = firebase['nonPaymentInterestAmount'];
    repaymentDate = firebase['repaymentDate'];
    transferDate = firebase['transferDate'];
  }
}
