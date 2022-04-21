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

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

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

  bool validate = false;

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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ReusableHeadlineText(
                            headLineName: "Create an Account",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Enter the following information correctly to create account",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusablePTitle(
                          title: "Name",
                        ),
                        ReusableTextField(
                          prefixIcon: const Icon(Icons.person_outline_outlined),
                          title: "Enter your username",
                          textEditingController: userNameController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusablePTitle(
                          title: "Email",
                        ),
                        ReusableTextField(
                          prefixIcon: const Icon(Icons.email_outlined),
                          title: "Enter your email",
                          textEditingController: emailController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusablePTitle(
                          title: "Password",
                        ),
                        ReusableTextfieldPassword(
                          errorText: validate ? "Field can't be empty" : null,
                          textEditingController: passwordController,
                          title: "Enter your password",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextfieldPassword(
                          errorText: validate ? "Field can't be empty" : null,
                          textEditingController: confPasswordController,
                          title: "Confirm password",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextButtonL(
                            text: Text(
                              "Sign up",
                              style: TextStyle(fontSize: 18),
                            ),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                passwordController.text.isEmpty
                                    ? validate = true
                                    : validate = false;
                                confPasswordController.text.isEmpty
                                    ? validate = true
                                    : validate = false;
                                debugPrint("signup button pressed");
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
                                userNameController.clear();
                                emailController.clear();
                                passwordController.clear();
                                confPasswordController.clear();
                              });
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
