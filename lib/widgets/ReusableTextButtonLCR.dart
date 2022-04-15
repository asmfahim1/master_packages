import 'package:flutter/material.dart';
import 'package:master_package/constants/constants.dart';

class ReusableTextButtonL extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onPressed;
  ReusableTextButtonL(
      {required this.title, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          primary: kDeepGreen,
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
