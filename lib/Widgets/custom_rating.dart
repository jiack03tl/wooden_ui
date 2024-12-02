import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  double? rating;
  double fontsize;
  FontWeight fontweight;
  Color? fontColor;

  CustomRating(
      {super.key,
      this.rating = 4.5,
      this.fontColor,
      required this.fontweight,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: TextStyle(
            fontSize: fontsize,
            fontWeight: fontweight,
            color: fontColor,
          ),
        ),
        Icon(
          Icons.star,
          color: Color(0xffEDB31E),
        )
      ],
    );
  }
}
