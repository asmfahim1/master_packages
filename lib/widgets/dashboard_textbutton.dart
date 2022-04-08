import 'package:flutter/material.dart';

class DashboardTextButton extends StatelessWidget {
  String headlineText;
  String normalText;
  IconData iconData;
  VoidCallback onPress;
  DashboardTextButton(
      {required this.iconData,
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
            color: Color(0xFF28706F),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 50,
                color: Colors.white,
              ),
              Text(
                headlineText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                normalText,
                style: TextStyle(
                    color: Colors.white,
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
