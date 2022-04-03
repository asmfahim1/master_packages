import 'package:flutter/material.dart';
import 'package:master_package/widgets/CircularWidget.dart';

import '../../widgets/ReusableHeadlineText.dart';

class ResetConfirmPassScreen extends StatelessWidget {
  const ResetConfirmPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          height: 40,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Enter new password",
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Confirm password",
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Done",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
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
    );
  }
}
