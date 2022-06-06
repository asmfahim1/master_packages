import 'package:flutter/material.dart';

class ReusablePTitle extends StatelessWidget {
  String title;
  ReusablePTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
    );
  }
}
