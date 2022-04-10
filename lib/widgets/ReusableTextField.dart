import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String title;
  Widget? suffixIcon;
  TextEditingController textEditingController = TextEditingController();

  ReusableTextField(
      {required this.title,
      this.suffixIcon,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        obscureText: true,
      ),
    );
  }
}
