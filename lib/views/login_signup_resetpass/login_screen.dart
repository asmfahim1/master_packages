import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/controller/login_controller.dart';
import 'package:master_package/views/login_signup_resetpass/reset_pass_screen.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';

import '../../widgets/CircularWidget.dart';
import '../../widgets/ReusableHeadlineText.dart';
import '../../widgets/ReusableTextField.dart';
import '../../widgets/ReusableTextfieldPassword.dart';
import '../../widgets/ReusableTitleText.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  static const bool newValue = true;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());

  // late LoginModel data;
  // make password visible or not
  bool? obscureText = true;
  void toggle() {
    setState(() {
      obscureText = !obscureText!;
    });
  }

  //Remember me
  bool? isChecked = false;
  late Box box;
  createBox() async {
    box = await Hive.openBox("Remember me");
    getData();
  }

  getData() {
    if (box.get('email') != null) {
      loginController.emailController.text = box.get('email');
    }

    if (box.get('password') != null) {
      loginController.passwordController.text = box.get('password');
    }
  }

  login() async {
    if (isChecked!) {
      box.put('email', loginController.emailController.text);
      box.put('password', loginController.passwordController.text);
    }
  }

  //login circular progress
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createBox();
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
              color: AppColor.kBackColor,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ReusableHeadlineText(
                          headLineName: "WELCOME",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sign in with your data that you entered during registration to continue",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ReusablePTitle(
                        title: "Email",
                      ),
                      Form(
                        key: loginController.fromKey,
                        child: ReusableTextField(
                          validator: (value) {
                            if (value!.isNotEmpty && value.length > 3) {
                              return null;
                            } else if (value.isNotEmpty && value.length < 3) {
                              return 'invalid email';
                            } else {
                              return 'field can not be empty';
                            }
                          },
                          textEditingController:
                              loginController.emailController,
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "Enter your email",
                        ),
                      ),
                      ReusablePTitle(title: "Password"),
                      Form(
                        key: loginController.fromKey1,
                        child: ReusableTextfieldPassword(
                          validator: (value) {
                            if (value!.isNotEmpty && value.length >= 4) {
                              return null;
                            } else if (value.isNotEmpty && value.length < 4) {
                              return 'invalid password';
                            } else {
                              return 'field can not be empty';
                            }
                          },
                          prefixIcon: const Icon(
                            Icons.vpn_key_outlined,
                          ),
                          hintText: 'Enter password',
                          textEditingController:
                              loginController.passwordController,
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
                      Row(
                        children: [
                          Theme(
                            data: Theme.of(context)
                                .copyWith(unselectedWidgetColor: Colors.white),
                            child: Checkbox(
                                value: isChecked,
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                }),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 43,
                          ),
                          GestureDetector(
                            child: Text(
                              "Forgot Password ?",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                            onTap: () {
                              Get.to(
                                ResetPassScreen(),
                              );
                            },
                          ),
                        ],
                      ),
                      ReusableTextButtonL(
                        text: isLoading
                            ? const CircularProgressIndicator()
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        color: Colors.white,
                        onPressed: () async {
                          debugPrint('button pressed1');
                          loginController.fetchData();
                          login();
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Sign up here",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                            onTap: () {
                              Get.toNamed('/create_acc');
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
