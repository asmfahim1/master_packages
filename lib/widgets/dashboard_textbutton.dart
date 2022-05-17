import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class DashboardTextButton extends StatelessWidget {
  String headlineText;
  String normalText;
  // IconData iconData;
  String image;
  VoidCallback onPress;
  DashboardTextButton(
      {
      // required this.iconData,
      required this.image,
      required this.headlineText,
      required this.normalText,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 158,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          primary: kDeepGreen,
          backgroundColor: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child:
                  Image.asset(image, width: 65, height: 65, fit: BoxFit.fill),
            ),
            Text(
              headlineText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              normalText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
