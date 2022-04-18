import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String title;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  // bool? obscureText;
  TextEditingController textEditingController = TextEditingController();

  ReusableTextField({
    Key? key,
    required this.title,
    this.suffixIcon,
    this.prefixIcon,
    required this.textEditingController,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
          // labelText: labelText,
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        obscureText: false,
      ),
    );
  }
}
