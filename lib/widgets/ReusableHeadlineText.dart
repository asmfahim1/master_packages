import 'package:flutter/material.dart';

class ReusableHeadlineText extends StatelessWidget {
  String headLineName;
  ReusableHeadlineText({required this.headLineName});

  @override
  Widget build(BuildContext context) {
    return Text(
      headLineName,
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        // color: Colors.white,
      ),
    );
  }
}
