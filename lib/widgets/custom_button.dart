import 'package:flutter/material.dart';

class CustomElevatedBottun extends StatelessWidget {
  final VoidCallback? onPress;
  final Color? btnColor;
  final String txt;
  final Color txtColor;
  final double? height;
  final double? width;

  const CustomElevatedBottun(
      {super.key,
      required this.txtColor,
      required this.onPress,
      this.height = 52,
      this.width = 382,
      required this.btnColor,
      required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: btnColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: onPress,
            child: Text(
              txt,
              style: TextStyle(color: txtColor),
            )));
  }
}
