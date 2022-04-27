import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/ReusablePasswordField.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import 'login_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();

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
                            title: "Enter your username",
                            textEditingController: userNameController),
                        SizedBox(
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
                        ReusablePTitle(
                          title: "Password",
                        ),
                        ReusableTextfieldPassword(
                            title: "Enter password",
                            textEditingController: passwordController),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextfieldPassword(
                            title: "  Confirm password",
                            textEditingController: confPasswordController),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableTextButtonL(
                            title: "Sign up",
                            color: Colors.white,
                            onPressed: () {
                              debugPrint("signup button pressed");
                              Get.to(() => LoginScreen());
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
