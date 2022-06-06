import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String hintText;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validator;
  // bool? obscureText;
  TextEditingController textEditingController = TextEditingController();

  ReusableTextField(
      {Key? key,
      required this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      required this.textEditingController,
      this.labelText,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: 'Roboto',
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
