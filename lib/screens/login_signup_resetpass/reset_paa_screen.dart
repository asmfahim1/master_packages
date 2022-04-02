import 'package:flutter/material.dart';
import 'package:master_package/widgets/CircularWidget.dart';

import '../../widgets/ReusableHeadlineText.dart';

class ResetPassScreen extends StatelessWidget {
  const ResetPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              CircularContainer(),
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
                            child: ReusableHeadlineText(
                              headLineName: 'Reset Password',
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                              "Forgot your password? Enter your email that you have used to create this account"),
                          SizedBox(
                            height: 40,
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
                            height: 40,
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
                                  "Send Email",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
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
