import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/constants/constants.dart';
import 'package:master_package/widgets/CircularWidget.dart';
import 'package:master_package/widgets/ReusableHeadlineText.dart';
import 'package:master_package/widgets/ReusableTextField.dart';

class ResetPassScreen extends StatefulWidget {
  ResetPassScreen({Key? key}) : super(key: key);

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  TextEditingController emailController = TextEditingController();

  late bool validate = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
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
              child: SingleChildScrollView(
                child: Container(
                  color: kDeepGreen,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ReusableHeadlineText(
                          headLineName: 'RESET PASSWORD',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Forgot your password? Enter your email that you have used to create this account",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ReusableTextField(
                        prefixIcon: Icon(Icons.email_outlined),
                        title: "Email",
                        textEditingController: emailController,
                        errorText: validate ? "Field can't be empty" : null,
                        // errorText: null,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            emailController.text.isEmpty
                                ? validate = true
                                : validate = false;
                          });
                        },
                        child: Text("Send email"),
                      ),
                    ],
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
