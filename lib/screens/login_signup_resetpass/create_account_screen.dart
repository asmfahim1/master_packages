import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import 'login_screen.dart';

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
                        ReusableTextField(
                            title: "Enter your username",
                            textEditingController: userNameController),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(
                            title: "Enter your email",
                            textEditingController: emailController),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 20),
                        ),
                        ReusableTextField(
                            title: "Enter password",
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.remove_red_eye_outlined),
                            ),
                            textEditingController: passwordController),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                            title: "  Confirm password",
                            textEditingController: confPasswordController),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextButtonL(
                            title: "Sign up",
                            color: Colors.white,
                            onPressed: () {
                              debugPrint("signup button pressed");
                              Get.to(() => LoginScreen());
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
