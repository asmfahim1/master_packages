import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/dashboard_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_paa_screen.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextField.dart';
import '../../widgets/ReusableTitleText.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _fromKey = GlobalKey();

  static const bool newValue = true;

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const CircularContainer(),
          Expanded(
            child: Container(
              color: kBackColor,
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
                          "Sign in with your data that you entered during registration to continue"),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusablePTitle(
                        title: "Email",
                      ),
                      ReusableTextField(
                          prefixIcon: Icon(Icons.email_outlined),
                          title: "Enter your email",
                          textEditingController: emailController),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusablePTitle(title: "Password"),
                      ReusableTextField(
                        prefixIcon: Icon(Icons.star_border_outlined),
                        title: "Enter password",
                        suffixIcon: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.remove_red_eye_outlined),
                        ),
                        textEditingController: passwordController,
                      ),
                      Row(
                        children: [
                          Checkbox(value: newValue, onChanged: (newValue) {}),
                          const Text(
                            "Keep me logged in",
                          ),
                        ],
                      ),
                      ReusableTextButtonL(
                        title: "Login",
                        color: Colors.white,
                        onPressed: () {
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
                            style: TextStyle(color: Colors.blue, fontSize: 18),
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
                          const Text("Don't have an account? "),
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
      )),
    );
  }
}
