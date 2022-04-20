import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/dashboard_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_pass_screen.dart';
import 'package:master_package/widgets/ReusablePasswordField.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextButtonLCR.dart';
import '../../widgets/ReusableTextField.dart';
import '../../widgets/ReusableTitleText.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  static const bool newValue = true;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

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
                          height: 10,
                        ),
                        const Text(
                          "Sign in with your data that you entered during registration to continue",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ReusablePTitle(
                          title: "Email",
                        ),
                        ReusableTextField(
                            prefixIcon: const Icon(Icons.email_outlined),
                            title: "Enter your email",
                            textEditingController: emailController),
                        const SizedBox(
                          height: 25,
                        ),
                        ReusablePTitle(title: "Password"),
                        ReusableTextfieldPassword(
                          title: "Enter password",
                          textEditingController: passwordController,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: LoginScreen.newValue,
                                onChanged: (newValue) {}),
                            const Text(
                              "Keep me logged in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        ReusableTextButtonL(
                          text: isLoading
                              ? const SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: CircularProgressIndicator(
                                    color: kDeepGreen,
                                  ),
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(fontSize: 18),
                                ),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              isLoading = true;
                            });
                            Future.delayed(Duration(seconds: 1), () {
                              setState(() {
                                isLoading = false;
                                Get.to(() => DashboardScreen());
                              });
                            });
                            emailController.clear();
                            passwordController.clear();
                          },
                        ),
                        // SizedBox(
                        //   height: 40,
                        //   child: TextButton(
                        //     style: TextButton.styleFrom(
                        //       shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(15.0),
                        //       ),
                        //       primary: kDeepGreen,
                        //       backgroundColor: Colors.white,
                        //     ),
                        //     onPressed: () {
                        //       setState(() {
                        //         isLoading = true;
                        //       });
                        //       Future.delayed(Duration(seconds: 1), () {
                        //         setState(() {
                        //           isLoading = false;
                        //           Get.to(() => DashboardScreen());
                        //         });
                        //       });
                        //     },
                        //     child: Center(
                        //       child: isLoading
                        //           ? const SizedBox(
                        //               width: 25,
                        //               height: 25,
                        //               child: CircularProgressIndicator(
                        //                 color: Colors.black,
                        //               ),
                        //             )
                        //           : const Text(
                        //               "Login",
                        //               style: TextStyle(
                        //                   fontSize: 18, color: Colors.black),
                        //             ),
                        //     ),
                        //   ),
                        // ),
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
                                Get.to(() => CreateAccountScreen());
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
