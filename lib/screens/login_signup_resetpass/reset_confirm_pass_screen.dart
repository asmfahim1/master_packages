import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/CircularWidget.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';
import 'package:master_package/widgets/ReusableTitleText.dart';

import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextfieldPassword.dart';
import 'login_screen.dart';

class ResetConfirmPassScreen extends StatefulWidget {
  ResetConfirmPassScreen({Key? key}) : super(key: key);

  @override
  State<ResetConfirmPassScreen> createState() => _ResetConfirmPassScreenState();
}

class _ResetConfirmPassScreenState extends State<ResetConfirmPassScreen> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confPasswordController = TextEditingController();

  final GlobalKey<FormState> _fromKey1 = GlobalKey();

  bool? obscureText = true;
  void toggle() {
    setState(() {
      obscureText = !obscureText!;
    });
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
                            headLineName: 'Reset Password',
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ReusablePTitle(title: "Password"),
                        Form(
                            key: _fromKey1,
                            child: Column(
                              children: [
                                ReusableTextfieldPassword(
                                  validator: (value) {
                                    if (value!.isNotEmpty &&
                                        value.length >= 6) {
                                      return null;
                                    } else if (value.isNotEmpty &&
                                        value.length < 6) {
                                      return 'Too short password';
                                    } else {
                                      return 'Enter password for further proceed';
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
                                SizedBox(height: 20),
                                ReusableTextfieldPassword(
                                  validator: (value) {
                                    if (value!.isNotEmpty &&
                                        value.length >= 6) {
                                      return null;
                                    } else if (value.isNotEmpty &&
                                        value.length < 6) {
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
                              ],
                            )),
                        SizedBox(height: 20),
                        ReusableTextButtonL(
                            title: "Done",
                            color: Colors.white,
                            onPressed: () {
                              if (_fromKey1.currentState!.validate() &&
                                  passwordController.text ==
                                      confPasswordController.text) {
                                Get.snackbar(
                                  'Successful',
                                  'Password successfully changed',
                                  snackPosition: SnackPosition.TOP,
                                  backgroundColor: Colors.white,
                                );
                                debugPrint("Done button pressed");
                                Get.to(() => LoginScreen());
                              } else if (_fromKey1.currentState!.validate() &&
                                  passwordController.text !=
                                      confPasswordController.text) {
                                debugPrint('Error');
                                Get.snackbar(
                                  'Error',
                                  'Password did not match',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: Colors.red,
                                );
                              } else {
                                debugPrint('Error');
                                Get.snackbar(
                                  'Error',
                                  'Invalid attempt',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: Colors.red,
                                );
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
