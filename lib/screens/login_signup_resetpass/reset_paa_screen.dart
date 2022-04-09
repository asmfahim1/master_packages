import 'package:flutter/material.dart';
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
              CircularContainer(),
              Expanded(
                child: Container(
                  color: Color(0xFF28706F),
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
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                              "Forgot your password? Enter your email that you have used to create this account"),
                          SizedBox(
                            height: 40,
                          ),
                          ReusablePTitle(title: "Email"),
                          SizedBox(
                            height: 50,
                            child: ReusableTextField(
                                obscureText: false,
                                title: "Enter your email",
                                textEditingController: emailController),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ReusableTextButtonL(
                            title: "Send email",
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
