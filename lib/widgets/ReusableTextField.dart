import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String title;
  ReusableTextField({required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: Padding(
              padding: EdgeInsets.all(0.8),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        obscureText: true,
      ),
    );
  }
}
