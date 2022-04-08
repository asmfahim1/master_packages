import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/login_signup_resetpass/login_screen.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: Container(
                height: 30,
                width: 100,
                color: Colors.white,
                child: Text(
                  "USER",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: Container(
                height: 30,
                width: 100,
                color: Colors.white,
                child: Text(
                  "ADMIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
