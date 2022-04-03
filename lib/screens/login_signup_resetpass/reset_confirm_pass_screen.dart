import 'package:flutter/material.dart';
import 'package:master_package/widgets/CircularWidget.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/ReusableHeadlineText.dart';

class ResetConfirmPassScreen extends StatelessWidget {
  const ResetConfirmPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          height: 40,
                        ),
                        ReusablePTitle(title: "Password"),
                        ReusableTextField(title: "Enter password"),
                        SizedBox(height: 20),
                        ReusableTextField(title: "Confirm Password"),
                        SizedBox(height: 20),
                        ReusableTextButtonL(title: "Done"),
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
