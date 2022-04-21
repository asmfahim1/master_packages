import 'package:flutter/material.dart';

class ReusableTextfieldPassword extends StatefulWidget {
  String title;
  String? labelText;
  String? errorText;
  // bool? obscureText;

  TextEditingController textEditingController = TextEditingController();

  ReusableTextfieldPassword(
      {Key? key,
      required this.title,
      required this.textEditingController,
      this.labelText,
      required this.errorText
      // this.obscureText,
      })
      : super(key: key);

  @override
  State<ReusableTextfieldPassword> createState() =>
      _ReusableTextfieldPasswordState();
}

class _ReusableTextfieldPasswordState extends State<ReusableTextfieldPassword> {
  bool _obscureText = true;

  bool validator = false;

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: widget.title,
          hintStyle: TextStyle(color: Colors.grey),
          labelText: widget.labelText,
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          errorText: widget.errorText,
          suffixIcon: IconButton(
              onPressed: () {
                toggle();
              },
              icon: Icon(_obscureText
                  ? Icons.remove_moderator
                  : Icons.remove_red_eye_outlined)),
          prefixIcon: const Icon(Icons.vpn_key),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        obscureText: _obscureText,
        obscuringCharacter: '*',
      ),
    );
  }
}
