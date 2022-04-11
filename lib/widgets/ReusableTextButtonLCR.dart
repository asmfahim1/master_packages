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
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 20,
        shadowColor: Colors.blue,
        onSurface: Colors.purple,
        primary: Colors.deepOrangeAccent,
        backgroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(title),
      ),
    );
  }
}
