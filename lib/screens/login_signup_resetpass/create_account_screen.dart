import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextfieldPassword.dart';
import 'login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                            hintText: "Enter your username",
                            textEditingController: userNameController),
                        SizedBox(
                          height: 20,
                        ),
                        ReusablePTitle(
                          title: "Email",
                        ),
                        ReusableTextField(
                            prefixIcon: const Icon(Icons.email_outlined),
                            hintText: "Enter your email",
                            textEditingController: emailController),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusablePTitle(
                          title: "Password",
                        ),
                        ReusableTextfieldPassword(
                          hintText: 'Enter password',
                          textEditingController: passwordController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextfieldPassword(
                          textEditingController: confPasswordController,
                          hintText: 'Confirm password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextButtonL(
                            title: "Sign up",
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                if (passwordController.text ==
                                    confPasswordController.text) {
                                  debugPrint('Success');
                                  postMethod();
                                } else {
                                  Get.snackbar(
                                    "Error",
                                    "Password did not matched",
                                    colorText: Colors.white,
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.green,
                                  );
                                }
                                debugPrint("signup button pressed");
                                Get.to(() => LoginScreen());
                              });
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
