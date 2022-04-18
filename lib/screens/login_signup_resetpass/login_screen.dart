import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_pass_screen.dart';
import 'package:master_package/widgets/ReusablePasswordField.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextField.dart';
import '../../widgets/ReusableTitleText.dart';
import '../dashboard_screen.dart';

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
                color: kDeepGreen,
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Sign in with your data that you entered during registration to continue",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusablePTitle(
                          title: "Email",
                        ),
                        ReusableTextField(
                            prefixIcon: const Icon(Icons.email_outlined),
                            title: "Enter your email",
                            textEditingController: emailController),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusablePTitle(title: "Password"),
                        ReusableTextfieldPassword(
                          title: "Enter password",
                          textEditingController: passwordController,
                        ),
                        Row(
                          children: [
                            Checkbox(value: newValue, onChanged: (newValue) {}),
                            const Text(
                              "Keep me logged in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        ReusableTextButtonL(
                          title: "Login",
                          color: Colors.white,
                          onPressed: () {
                            emailController.clear();
                            passwordController.clear();
                            Get.to(() => DashboardScreen());
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: GestureDetector(
                            child: const Text(
                              "Forgot Password ?",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                            onTap: () {
                              Get.to(ResetPassScreen());
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account? ",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              child: const Text(
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
        ),
      ),
    );
  }
}
