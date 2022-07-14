// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const CustomListTile({
    this.title,
    this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return SizedBox(
      width: screensize.width / 2.5,
      child: ListTile(
        title: Text(
          title.toString(),
          style: const TextStyle(
              color: Color(0xFFADADAD), fontWeight: FontWeight.w300),
        ),
        subtitle: Text(
          subtitle.toString(),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
