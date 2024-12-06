import 'package:flutter/material.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class ExampleCustomGaps extends StatefulWidget {
  const ExampleCustomGaps({super.key});

  @override
  State<ExampleCustomGaps> createState() => _ExampleCustomGapsState();
}

class _ExampleCustomGapsState extends State<ExampleCustomGaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: p12,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ],
          ),
          hgap(1),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
