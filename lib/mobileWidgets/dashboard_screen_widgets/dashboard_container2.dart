import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardContainer2 extends StatelessWidget {
  const DashboardContainer2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 100, width: Get.width * 0.9,

      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      // width: screensize.width / 1.2,
      child: Row(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Borrower Name',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Adam Scot',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Loan Type',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Personal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(
                  'Learn more',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              radius: 15,
              child: InkWell(
                  onTap: () {},
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF98E698),
                      size: 20,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
