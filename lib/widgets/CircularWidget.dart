import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            color: Color(0xffC21F30),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180))),
      ),
    );
  }
}
