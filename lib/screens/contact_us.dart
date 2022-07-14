import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:newbuddyborrow/controllers/contact_us_controller.dart';
import 'package:newbuddyborrow/core/constants/constants.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  // ignore: non_constant_identifier_names
  ContactUsController controller = Get.put(ContactUsController());
  late TextEditingController namecontroller;
  late TextEditingController emailaddresscontroller;
  late TextEditingController messagecontroller;
  @override
  void initState() {
    namecontroller = TextEditingController();
    emailaddresscontroller = TextEditingController();
    messagecontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    namecontroller.dispose();
    emailaddresscontroller.dispose();
    messagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFE7E7E7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7E7E7),
        elevation: 0,
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFE7E7E7),
          radius: 20,
          child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const MyProfileScreen()),
                // );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Image.asset('assets/MaskGroup13.png'),
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const NotificationScreen()),
                  // );
                },
                child: const Icon(Icons.notifications,
                    color: Colors.black, size: 25)),
          )
        ],
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 10, right: 10),
          child: Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/escalate.png',
                height: screensize.height / 5,
                width: screensize.width,
              ),
              EditProfileTextFieldHere(
                  hint: 'Name', icon: Icons.person, controller: namecontroller),
              EditProfileTextFieldHere(
                  hint: 'Email address',
                  icon: Icons.person,
                  controller: emailaddresscontroller),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                height: Get.height * 0.16,
                width: Get.width * 0.85,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.01),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.013),
                          child: const Icon(
                            Icons.message,
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.03,
                        ),
                        SizedBox(
                          width: Get.width * 0.65,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TextField(
                                maxLines: 4,
                                controller: messagecontroller,
                                style: const TextStyle(fontSize: 16),
                                textAlign: TextAlign.left,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type message here',
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13.0),
                child: Container(
                  width: Get.width * 0.85,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * 0.04,
                      ),
                      const Icon(
                        Icons.attach_file,
                        size: 26,
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      const Text(
                        'Attachment (Optional)',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        CupertinoIcons.share,
                        color: kGreenColor,
                        size: 26,
                      ),
                      SizedBox(
                        width: Get.width * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              InkWell(
                  onTap: () {
                    Get.dialog(Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.1,
                          vertical: Get.height * 0.2),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                            SizedBox(
                              width: Get.width * 0.5,
                              child: Lottie.asset('assets/Json/email.json',
                                  fit: BoxFit.fitWidth),
                            ),
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                            SizedBox(
                              width: Get.width * 0.6,
                              child: const Text(
                                'Your response has been sent successfully.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.06,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: Get.height * 0.06,
                                width: Get.width * 0.6,
                                decoration: BoxDecoration(
                                    color: kblueColor,
                                    borderRadius: BorderRadius.circular(25)),
                                child: const Center(
                                  child: Text(
                                    'Done',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
                  },
                  child: const Sendfeedbackbutton()),
            ],
          ),
        )),
      ),
    );
  }
}

// ignore: must_be_immutable
class EditProfileTextFieldHere extends StatelessWidget {
  EditProfileTextFieldHere({
    required this.hint,
    required this.icon,
    required this.controller,
    Key? key,
  }) : super(key: key);
  String hint;
  IconData icon;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: Container(
        width: Get.width * 0.85,
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width * 0.04,
            ),
            Icon(
              icon,
              size: 26,
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            SizedBox(
              width: Get.width * 0.65,
              child: TextField(
                  controller: controller,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Sendfeedbackbutton extends StatelessWidget {
  const Sendfeedbackbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.85,
      decoration: BoxDecoration(
          color: const Color(0xFF5BB6EB),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: Get.width * 0.35),
            const Text(
              'Send',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(width: Get.width * 0.22),
            const Icon(
              Icons.send,
              color: Colors.white,
            ),
            const Spacer(),
          ]),
    );
  }
}
