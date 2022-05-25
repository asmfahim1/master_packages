import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:master_package/constants/constants.dart';
import 'package:master_package/screens/login_signup_resetpass/reset_pass_screen.dart';
import 'package:master_package/widgets/ReusableTextButtonLCR.dart';

import '../../models/login/login_model.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _fromKey = GlobalKey();
  final GlobalKey<FormState> _fromKey1 = GlobalKey();

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
    if (response.body == "no data found") {
      Get.snackbar(
        'Success',
        'login nai',
        backgroundColor: Colors.white,
      );
    }
    if (response.statusCode == 200 &&
        data.email == emailController.text.toString() &&
        data.password == passwordController.text.toString()) {
      Get.snackbar(
        'Success',
        'login Successful',
        backgroundColor: Colors.white,
      );
      Get.offAllNamed('/dashboard');
    } else {
      Get.snackbar(
        "Error",
        "Credential not matched",
        colorText: Colors.red,
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  late LoginModel data;

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
      emailController.text = box.get('email');
    }

    if (box.get('password') != null) {
      passwordController.text = box.get('password');
    }
  }

  login() async {
    if (isChecked!) {
      box.put('email', emailController.text);
      box.put('password', passwordController.text);
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
              color: kDeepGreen,
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
                        key: _fromKey,
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
                          textEditingController: emailController,
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "Enter your email",
                        ),
                      ),
                      ReusablePTitle(title: "Password"),
                      Form(
                        key: _fromKey1,
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
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        color: Colors.white,
                        onPressed: () {
                          debugPrint('button pressed1');
                          try {
                            if (_fromKey.currentState!.validate()) {
                              if (_fromKey1.currentState!.validate()) {
                                postMethod();
                                login();
                              }
                            }
                          } catch (e) {
                            debugPrint(e.toString());
                          }
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
