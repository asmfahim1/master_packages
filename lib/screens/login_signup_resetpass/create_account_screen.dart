import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/ReusablePasswordField.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();

  // post method a kono model class create korte hoy na.
  postMethod() async {
    var response = await http.post(
        Uri.parse('https://pharmacy.brotherdev.com/register.php'),
        body: jsonEncode(<String, String>{
          "name": userNameController.text,
          "email": emailController.text,
          "password": passwordController.text
        }));
    debugPrint(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CircularContainer(
              iconData: IconButton(
                splashColor: kDeepGreen,
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
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
                            headLineName: "Create an Account",
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Enter the following information correctly to create account",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusablePTitle(
                          title: "Name",
                        ),
                        ReusableTextField(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          title: "Enter your username",
                          textEditingController: userNameController,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusablePTitle(
                          title: "Email",
                        ),
                        ReusableTextField(
                            prefixIcon: const Icon(Icons.email_outlined),
                            title: "Enter your email",
                            textEditingController: emailController),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusablePTitle(
                          title: "Password",
                        ),
                        ReusableTextfieldPassword(
                          title: "Enter password",
                          textEditingController: passwordController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextfieldPassword(
                          title: "Confirm password",
                          textEditingController: confPasswordController,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ReusableTextButtonL(
                            title: "Sign up",
                            color: Colors.white,
                            onPressed: () {
                              debugPrint("signup button pressed");
                              if (passwordController.text ==
                                  confPasswordController.text) {
                                debugPrint('Success');
                                postMethod();
                              } else {
                                Get.snackbar(
                                    'Error', "Password did not matched");
                              }
                              userNameController.clear();
                              emailController.clear();
                              passwordController.clear();
                              confPasswordController.clear();
                            }),
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
