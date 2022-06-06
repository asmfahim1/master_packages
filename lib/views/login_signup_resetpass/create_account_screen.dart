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

  final GlobalKey<FormState> _fromKey1 = GlobalKey();
  final GlobalKey<FormState> _fromKey2 = GlobalKey();
  final GlobalKey<FormState> _fromKey3 = GlobalKey();
  final GlobalKey<FormState> _fromKey4 = GlobalKey();

  // for showing password text
  bool? obscureText = true;
  void toggle() {
    setState(() {
      obscureText = !obscureText!;
    });
  }

  // post method a kono model class create korte hoy na.
  signupMethod() async {
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
                          height: 10,
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
                        Form(
                          key: _fromKey1,
                          child: ReusableTextField(
                              validator: (value) {
                                if (value!.isNotEmpty && value.length >= 3) {
                                  return null;
                                } else if (value.isNotEmpty &&
                                    value.length < 3) {
                                  return 'invalid user name';
                                } else {
                                  return 'field can not be empty';
                                }
                              },
                              prefixIcon: Icon(Icons.person_outline),
                              hintText: "Enter your username",
                              textEditingController: userNameController),
                        ),
                        ReusablePTitle(
                          title: "Email",
                        ),
                        Form(
                          key: _fromKey2,
                          child: ReusableTextField(
                              validator: (value) {
                                if (value!.isNotEmpty && value.length >= 6) {
                                  return null;
                                } else if (value.isNotEmpty &&
                                    value.length < 6) {
                                  return 'invalid email address';
                                } else {
                                  return 'field can not be empty';
                                }
                              },
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: "Enter your email",
                              textEditingController: emailController),
                        ),
                        ReusablePTitle(
                          title: "Password",
                        ),
                        Form(
                          key: _fromKey3,
                          child: ReusableTextfieldPassword(
                            validator: (value) {
                              if (value!.isNotEmpty && value.length >= 6) {
                                return null;
                              } else if (value.isNotEmpty && value.length < 6) {
                                return 'Too short password';
                              } else {
                                return 'field can not be empty';
                              }
                            },
                            prefixIcon: const Icon(
                              Icons.vpn_key_outlined,
                            ),
                            hintText: 'Enter password',
                            textEditingController: passwordController,
                            obscureText: obscureText,
                            suffixIcon: IconButton(
                              onPressed: () {
                                toggle();
                              },
                              icon: Icon(obscureText!
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                        Form(
                          key: _fromKey4,
                          child: ReusableTextfieldPassword(
                            validator: (value) {
                              if (value!.isNotEmpty && value.length >= 6) {
                                return null;
                              } else if (value.isNotEmpty && value.length < 6) {
                                return 'invalid password';
                              } else {
                                return 'field can not be empty';
                              }
                            },
                            prefixIcon: const Icon(
                              Icons.vpn_key_outlined,
                            ),
                            textEditingController: confPasswordController,
                            hintText: 'Confirm password',
                            obscureText: false,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextButtonL(
                            text: Text(
                              "Signup",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            color: Colors.white,
                            onPressed: () {
                              if (_fromKey1.currentState!.validate()) {
                                if (_fromKey2.currentState!.validate()) {
                                  if (_fromKey3.currentState!.validate()) {
                                    if (_fromKey4.currentState!.validate()) {
                                      if (passwordController.text ==
                                          confPasswordController.text) {
                                        debugPrint('Success');
                                        signupMethod();
                                        Get.snackbar('Successful',
                                            'Successfully signed up');
                                        debugPrint("signup button pressed");
                                        Get.to(() => LoginScreen());
                                      } else {
                                        Get.snackbar(
                                          "Error",
                                          "Password did not matched",
                                          colorText: Colors.white,
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.red,
                                        );
                                      }
                                    }
                                  }
                                }
                              }
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
