import 'package:flutter/material.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();

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
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                            "Enter the following information correctly to create account"),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Name",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(
                            title: "Enter username",
                            textEditingController: userNameController),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Email",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(
                            title: "Enter email",
                            textEditingController: emailController),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(
                          title: "Enter password",
                          textEditingController: passwordController,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.remove_red_eye_outlined),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                            title: "Confirm password",
                            textEditingController: confPasswordController),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextButtonL(
                            title: "Sign up",
                            onPressed: () {
                              debugPrint("signup button pressed");
                            })
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
