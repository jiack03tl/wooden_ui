import 'package:flutter/material.dart';

class Categoryscreen extends StatefulWidget {
  Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  double categoryPadding = 10.0;
  double gridSpacing = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 22, right: 22),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 19,
            mainAxisSpacing: 10,
            childAspectRatio: 0.820,
            crossAxisCount: 3,
          ),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return categoryies();
          },
        ),
      ),
    );
  }

  Widget categoryies() {
    return Container(
      // color: Colors.blue,
      child: Column(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),

            // color: Colors.green,
            // child: CircleAvatar(
            //   backgroundColor: Colors.grey.shade500,
            //   radius: 160,
            //   child: Icon(
            //     Icons.ac_unit,
            //     size: 50,
            //     color: Colors.black,
            //   ),
            // ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
