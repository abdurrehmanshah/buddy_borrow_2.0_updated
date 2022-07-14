import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class UserModel {
  String? firstName;
  String? middleName;
  String? surname;
  String? dbId;
  String? email;
  String? password;
  String? dateOfBirth;
  String? phoneNumber;
  String? address;
  String? postCode;
  String? securityQuestion1;
  String? securityQuestion2;
  String? securityQuestion3;

  String? userImageUrl;

  UserModel({
    this.dbId,
    this.email,
    this.firstName,
    this.password,
    this.dateOfBirth,
    this.surname,
    this.middleName,
    this.address,
    this.securityQuestion2,
    this.securityQuestion3,
    this.phoneNumber,
    this.userImageUrl,
    this.postCode,
    this.securityQuestion1,
  });

  toFirebase() {
    return {
      'dbId': dbId ?? '',
      'email': email,
      'firstName': firstName,
      'dateOfBirth': dateOfBirth!.isEmpty
          ? dateOfBirth
          : DateFormat.yMMMd().format(Timestamp.now().toDate()),
      'surname': surname,
      'middleName': middleName ?? '',
      'address': address ?? '',
      'securityQuestion1': securityQuestion1,
      'securityQuestion2': securityQuestion2,
      'securityQuestion3': securityQuestion3,
      'phoneNumber': phoneNumber,
      'userImageUrl': userImageUrl,
      'postCode': postCode,
    };
  }

  UserModel.fromFirebase({firebase}) {
    firstName = firebase['firstName'];
    email = firebase['email'];
    dbId = firebase['dbId'];
    userImageUrl = firebase['userImageUrl'];
  }
}
