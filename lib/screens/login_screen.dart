import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormState> _fromKey = GlobalKey();

  static const bool newValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
                color: Color(0xffC21F30),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(180))),
          ),
        ),
        Expanded(
          child: Container(
            color: Color(0xFF28706F),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "WELCOME",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Sign in with your data that you entered during registration to continue"),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your email",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      obscureText: true,
                    ),
                    Row(
                      children: [
                        Checkbox(value: newValue, onChanged: (newValue) {}),
                        Text(
                          "Keep me logged in",
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        Text(
                          "Sign up here",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
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
    ));
  }
}

// Stack(
// children: [
// Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
// alignment: Alignment.topRight,
// child: Container(
// height: MediaQuery.of(context).size.height / 4,
// width: MediaQuery.of(context).size.width / 2,
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(180),
// )),
// ),
// ),
// Container(
// height: MediaQuery.of(context).size.height / 6,
// width: MediaQuery.of(context).size.width / 5,
// color: Colors.white,
// )
// ],
// ),
