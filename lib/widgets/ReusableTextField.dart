import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String title;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  // bool? obscureText;
  String? errorText;
  TextEditingController textEditingController = TextEditingController();

  ReusableTextField(
      {Key? key,
      required this.title,
      this.suffixIcon,
      this.prefixIcon,
      required this.textEditingController,
      this.labelText,
      this.errorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 17),
          // labelText: labelText,
          labelStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorText: errorText,
        ),
        obscureText: false,
      ),
    );
  }
}
