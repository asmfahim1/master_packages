import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/dashboard_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_pass_screen.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextField.dart';
import '../../widgets/ReusableTitleText.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _fromKey = GlobalKey();

  static const bool newValue = true;

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
                          headLineName: "WELCOME",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "Sign in with your data that you entered during registration to continue"),
                      SizedBox(
                        height: 20,
                      ),
                      ReusablePTitle(
                        title: "Email",
                      ),
                      ReusableTextField.withoutSuffixIcon(
                          "Enter your email", emailController),
                      SizedBox(
                        height: 20,
                      ),
                      ReusablePTitle(title: "Password"),
                      ReusableTextField(
                          "Enter password",
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.remove_red_eye_outlined),
                          ),
                          passwordController),
                      Row(
                        children: [
                          Checkbox(value: newValue, onChanged: (newValue) {}),
                          Text(
                            "Keep me logged in",
                          ),
                        ],
                      ),
                      ReusableTextButtonL(
                        title: "Login",
                        onPressed: () {
                          Get.to(() => DashboardScreen());
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: GestureDetector(
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                          onTap: () {
                            Get.to(ResetPassScreen());
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? "),
                          GestureDetector(
                            child: Text(
                              "Sign up here",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                            onTap: () {
                              Get.to(CreateAccountScreen());
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
