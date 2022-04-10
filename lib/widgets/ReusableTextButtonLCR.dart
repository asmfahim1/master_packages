import 'package:flutter/material.dart';

class ReusableTextButtonL extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onPressed;
  ReusableTextButtonL(
      {required this.title, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
