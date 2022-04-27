import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  Widget? iconData;
  CircularContainer({
    this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 15),
            child: iconData,
          ),
          Container(
            height: 180,
            width: 180,
            decoration: const BoxDecoration(
                color: Color(0xffC21F30),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(180))),
          ),
        ],
      ),
    );
  }
}
