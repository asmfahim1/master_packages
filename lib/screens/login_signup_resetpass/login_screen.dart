import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_paa_screen.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

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
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(0.8),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        obscureText: true,
                      ),
                      Row(
                        children: [
                          Checkbox(value: newValue, onChanged: (newValue) {}),
                          Text(
                            "Keep me logged in",
                          ),
                        ],
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
                              "Login",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
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
