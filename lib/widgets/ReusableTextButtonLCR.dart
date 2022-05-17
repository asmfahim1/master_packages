import 'package:flutter/material.dart';
import 'package:master_package/constants/constants.dart';

class ReusableTextButtonL extends StatelessWidget {
  final Color? color;
  final VoidCallback onPressed;
  final Widget text;
  ReusableTextButtonL(
      {required this.text, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          primary: kDeepGreen,
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Center(child: text),
      ),
    );
  }
}
