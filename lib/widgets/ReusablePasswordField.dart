import 'package:flutter/material.dart';

class ReusableTextfieldPassword extends StatelessWidget {
  String title;
  String? labelText;

  TextEditingController textEditingController = TextEditingController();

  ReusableTextfieldPassword(
      {Key? key,
      required this.title,
      required this.textEditingController,
      this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),
          labelText: labelText,
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
          prefixIcon: const Icon(Icons.vpn_key),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        obscureText: true,
      ),
    );
  }
}
