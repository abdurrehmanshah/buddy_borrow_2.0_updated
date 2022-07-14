import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class DashboardContainer extends StatefulWidget {
  String asset;
  String text;
  DashboardContainer({
    required this.asset,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardContainer> createState() => _DashboardContainerState();
}

class _DashboardContainerState extends State<DashboardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      height: 170,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
                height: Get.height * 0.15,
                // width: Get.width * 0.2,
                child: Center(
                  child: Lottie.asset(widget.asset, fit: BoxFit.fitHeight),
                )),
            // child: Icon(
            //   widget.icon,
            //   size: 50,
            //   color: const Color(0xFF5BB6EB),
            // ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Text(
                widget.text,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
