import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Image.asset("assets/images/ic_logo.svg")],
      ),
    );
  }
}
