import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:master_package/screens/dashboard_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_paa_screen.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextfieldPassword.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextField.dart';
import '../../widgets/ReusableTitleText.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _fromKey = GlobalKey();

  //hive box to store data
  late Box _box;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initialize hive db
    createBox();
  }

  //open hive
  void createBox() async {
    _box = await Hive.openBox("Remember_me");
    getData();
  }

  //get the value from hive
  void getData() {
    if (_box.get('email') != null) {
      emailController.text = _box.get('email');
    }
    if (_box.get('password') != null) {
      passwordController.text = _box.get('password');
    }
  }

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
                      ReusableTextField(
                        title: "Enter your email",
                        textEditingController: emailController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReusablePTitle(title: "Password"),
                      ReusableTextfieldPassword(
                        title: "Enter password",
                        textEditingController: passwordController,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (val) {
                                // isChecked = !isChecked;
                                setState(() {
                                  isChecked = val!;
                                });
                              }),
                          Text(
                            "Keep me logged in",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Center(
                            child: GestureDetector(
                              child: Text(
                                "Forgot Password ?",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 17),
                              ),
                              onTap: () {
                                Get.to(ResetPassScreen());
                              },
                            ),
                          ),
                        ],
                      ),
                      ReusableTextButtonL(
                        title: "Login",
                        color: Colors.white,
                        onPressed: () {
                          Get.to(() => DashboardScreen());
                          login();
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
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

  login() {
    if (isChecked) {
      _box.put('email', emailController.text);
      _box.put('password', passwordController.text);
    }
  }
}
