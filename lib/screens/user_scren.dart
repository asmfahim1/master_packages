import 'package:flutter/material.dart';

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
            Container(
              height: 30,
              width: 100,
              color: Colors.deepOrange,
              child: Text("User Data1"),
            ),
            Container(
              height: 30,
              width: 100,
              color: Colors.lightBlue,
              child: Text("User Data1"),
            ),
          ],
        ),
      ),
    ));
  }
}
