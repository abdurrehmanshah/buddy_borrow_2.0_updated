// ignore_for_file: file_names

import 'package:newbuddyborrow/core/constants/constants.dart';
import 'package:flutter/material.dart';

class DashboardListTile extends StatelessWidget {
  final String? name;
  // ignore: non_constant_identifier_names
  final String? loan_type;
  const DashboardListTile({
    this.name,
    // ignore: non_constant_identifier_names
    this.loan_type,
    Key? key,
    required this.screensize,
  }) : super(key: key);

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        // height: screensize.height / 9.3,
        // width: screensize.width / 1.3,
        child: ListTile(
          iconColor: const Color(0xFF92E592),
          minVerticalPadding: 15,
          minLeadingWidth: 10,
          title: const Text(
            'Lender Name',
            style: TextStyle(
                color: Color(0xFF7F7F7F),
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          subtitle: Text(
            name.toString(),
            style: const TextStyle(
                color: Color(0xFF7F7F7F),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          onTap: () {},
          trailing: Column(
            children: [
              const Text(
                'Loan Type',
                style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                loan_type.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Learn More',
                style: TextStyle(
                    color: kGrey, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
