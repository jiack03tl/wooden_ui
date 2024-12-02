import 'package:flutter/material.dart';

class CustomSliderDot extends StatelessWidget {
  const CustomSliderDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 6,
      decoration:
          const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
    );
  }
}
