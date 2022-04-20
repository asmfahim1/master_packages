import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/CircularWidget.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextButtonLCR.dart';

class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              CircularContainer(
                iconData: IconButton(
                  splashColor: kDeepGreen,
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: kDeepGreen,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ReusableHeadlineText(
                              headLineName: 'Reset Password',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Forgot your password? Enter your email that you have used to create this account",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ReusablePTitle(title: "Email"),
                          SizedBox(
                            height: 50,
                            child: ReusableTextField(
                                prefixIcon: Icon(Icons.email_outlined),
                                title: "Enter your email",
                                textEditingController: emailController),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ReusableTextButtonL(
                            text: Text(
                              "Send email",
                              style: TextStyle(fontSize: 18),
                            ),
                            color: Colors.white,
                            onPressed: () {
                              debugPrint("Send button pressed");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
