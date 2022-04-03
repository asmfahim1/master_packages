import 'package:flutter/material.dart';
import 'package:master_package/widgets/ReusableTextField.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

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
                            headLineName: "Create an Account",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            "Enter the following information correctly to create account"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(title: "Enter your username"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(title: "Enter your email"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(title: "Enter password"),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(title: "Confirm password"),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
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
