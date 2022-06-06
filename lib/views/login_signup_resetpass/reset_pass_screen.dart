import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/views/login_signup_resetpass/reset_confirm_pass_screen.dart';
import 'package:master_package/widgets/CircularWidget.dart';
import 'package:master_package/widgets/ReusableTextField.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextButtonLCR.dart';

class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormState> _fromKey1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
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
                              headLineName: 'Reset Password',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Forgot your password? Enter your email that you have used to create this account",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ReusablePTitle(title: "Email"),
                          Form(
                            key: _fromKey1,
                            child: ReusableTextField(
                              validator: (value) {
                                if (value!.isNotEmpty && value.length > 3) {
                                  return null;
                                } else if (value.isNotEmpty &&
                                    value.length < 3) {
                                  return 'invalid email';
                                } else {
                                  return 'field can not be empty';
                                }
                              },
                              textEditingController: emailController,
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: "Enter your email",
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ReusableTextButtonL(
                            text: Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            color: Colors.white,
                            onPressed: () {
                              if (_fromKey1.currentState!.validate()) {
                                Get.snackbar(
                                  'Confirmation mail',
                                  'An email has sent to your account',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: Colors.white,
                                );
                                debugPrint('Send email button pressed');
                                Get.to(() => ResetConfirmPassScreen());
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
