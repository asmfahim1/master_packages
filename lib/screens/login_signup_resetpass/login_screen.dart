import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/dashboard_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/create_account_screen.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_pass_screen.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';

import '../../models/login/login_model.dart';
import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
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

  final GlobalKey<FormState> _fromKey = GlobalKey();

  // post method a kono model class create korte hoy na.
  postMethod() async {
    var response =
        await http.post(Uri.parse('https://pharmacy.brotherdev.com/login.php'),
            body: jsonEncode(<String, String>{
              "email": emailController.text,
            }));
    debugPrint(response.body);
    data = loginModelFromJson(response.body);
    debugPrint(data.email);
    debugPrint(passwordController.text.toString());
    debugPrint(emailController.text.toString());
    if (response.statusCode == 200 &&
        data.password == passwordController.text.toString()) {
      Get.to(() => DashboardScreen());
    } else {
      Get.snackbar("Error", "Credential not matched");
    }
  }

  late LoginModel data;

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
                          textEditingController: emailController),
                      SizedBox(
                        height: 20,
                      ),
                      ReusablePTitle(title: "Password"),
                      ReusableTextField(
                        title: "Enter password",
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.remove_red_eye_outlined),
                        ),
                        textEditingController: passwordController,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: LoginScreen.newValue,
                              onChanged: (newValue) {
                                newValue != newValue!;
                              }),
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
                          postMethod();
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
