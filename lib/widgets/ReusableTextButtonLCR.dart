import 'package:flutter/material.dart';

class ReusableTextButtonL extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onPressed;
  ReusableTextButtonL(
      {required this.title, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: onPressed,
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
