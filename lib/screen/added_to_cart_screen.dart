import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/Widgets/custom_text.dart';

class AddedToCartScreen extends StatefulWidget {
  const AddedToCartScreen({super.key});

  @override
  State<AddedToCartScreen> createState() => _AddedToCartScreenState();
}

class _AddedToCartScreenState extends State<AddedToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 44.0, left: 24, right: 24),
            child: Container(
              width: 390,
              height: 141,
              decoration: BoxDecoration(color: Colors.blue.shade500),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    width: 141,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/chair.png"))),
                  ),
                  // SizedBox(
                  //   width: 16,
                  // ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: "Vendors Name",
                            fontsize: 14,
                            fontColor: Colors.grey,
                            fontweight: FontWeight.w400,
                          ),
                          CustomRating(
                            fontweight: FontWeight.w400,
                            fontsize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
