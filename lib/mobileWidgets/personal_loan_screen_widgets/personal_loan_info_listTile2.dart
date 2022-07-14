// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomListStyle2 extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const CustomListStyle2({
    this.title,
    this.subtitle,
    Key? key,
    required this.screensize,
  }) : super(key: key);

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screensize.width,
      child: ListTile(
        title: Text(
          title.toString(),
          style: const TextStyle(
              color: Color(0xFFADADAD), fontWeight: FontWeight.w300),
        ),
        subtitle: Text(
          subtitle.toString(),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
