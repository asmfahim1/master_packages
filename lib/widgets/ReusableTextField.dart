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
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: title,
            // labelText: 'Enter the Value',
            errorText: errorText,
            errorStyle: TextStyle(
              fontSize: 15,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          keyboardType: TextInputType.emailAddress,
          maxLength: 10,
        ),
      ),
    );
  }
}
