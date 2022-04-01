import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                child: const Text(
                  "User",
                  style: TextStyle(fontSize: 30),
                )),
            TextButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              child: const Text("Admin", style: TextStyle(fontSize: 30)),
            )
          ],
        ),
      ),
    );
  }
}
