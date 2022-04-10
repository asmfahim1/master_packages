import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String? title;
  Widget? suffixIcon;
  TextEditingController textEditingController = TextEditingController();

  ReusableTextField(String title, Widget suffixIcon,
      TextEditingController textEditingController,
      {Key? key})
      : super(key: key) {
    this.title;
    this.suffixIcon;
    this.textEditingController;
  }
  ReusableTextField.withoutSuffixIcon(this.title, this.textEditingController,
      {Key? key})
      : super(key: key) {
    title;
    textEditingController;
  }

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
