import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/CircularWidget.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/ReusableHeadlineText.dart';

class ResetConfirmPassScreen extends StatelessWidget {
  ResetConfirmPassScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        SizedBox(
                          height: 40,
                        ),
                        ReusablePTitle(title: "Password"),
                        ReusableTextField(
                            title: "Enter password",
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.remove_red_eye_outlined),
                            ),
                            textEditingController: passwordController),
                        SizedBox(height: 20),
                        ReusableTextField(
                            title: "Confirm password",
                            textEditingController: confPasswordController),
                        SizedBox(height: 20),
                        ReusableTextButtonL(
                          text: Text(
                            "Done",
                            style: TextStyle(fontSize: 18),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            debugPrint("Done pressed");
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
    );
  }
}
