import 'package:flutter/material.dart';
import 'package:furniture_app/resources/color_resources.dart';

class CustomTextField extends StatelessWidget {
  String? hintxt;
  Color hintColor;
  double height;
  double width;
  final TextInputType? keyBoardType;

  CustomTextField(
      {super.key,
      this.hintxt,
      this.width = 40,
      this.height = 289,
      required this.hintColor,
      this.keyBoardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 1, color: ColorsRecourse.numberInputBorderColor)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: TextField(
          keyboardType: keyBoardType,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintxt,
              hintStyle: TextStyle(
                color: hintColor,
              )),
        ),
      ),
    );
  }
}
