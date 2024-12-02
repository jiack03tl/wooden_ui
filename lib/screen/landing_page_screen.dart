import 'package:flutter/material.dart';

class LandingpageScreen extends StatefulWidget {
  const LandingpageScreen({super.key});

  @override
  State<LandingpageScreen> createState() => _LandingpageScreenState();
}

class _LandingpageScreenState extends State<LandingpageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("landing page"),
      ),
    );
  }
}
