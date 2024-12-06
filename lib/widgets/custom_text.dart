import 'package:flutter/material.dart';
import 'package:furniture_app/resources/color_resources.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  CustomText(
      {super.key,
      this.text,
      this.maxLines,
      this.overflow,
      this.style,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      style: style ?? Theme.of(context).textTheme.bodyMedium,
    );
  }
}
