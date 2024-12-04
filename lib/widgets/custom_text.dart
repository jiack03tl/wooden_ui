import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontsize;
  FontWeight fontweight;
  Color fontColor;
  TextDecoration? cutLine = TextDecoration.lineThrough;

  CustomText(
      {super.key,
      this.cutLine,
      required this.text,
      required this.fontsize,
      required this.fontweight,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: cutLine,
        fontSize: fontsize,
        fontWeight: fontweight,
        color: fontColor,
      ),
    );
  }
}
