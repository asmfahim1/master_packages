import 'dart:ui';

import 'package:flutter/material.dart';

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
    return Expanded(
      child: TextButton(
        onPressed: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child:
                    Image.asset(image, width: 70, height: 70, fit: BoxFit.fill),
              ),
              Text(
                headlineText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                normalText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
