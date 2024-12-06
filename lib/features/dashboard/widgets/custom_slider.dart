import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class CustomSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          SizedBox(
            height: 152,
            width: 395,
            child: CarouselView(itemExtent: 392, children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQefCqPfi1pXbS-P4mvigOBPMUqIqYq2fmw&s",
                fit: BoxFit.cover,
              ),
            ]),
          ),
          gap36,
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CustomText(
              text: TextResources.evalteYourSpace,
            ),
          )
        ]),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 6,
                  width: 6,
                  decoration: const BoxDecoration(
                      color: Colors.brown, shape: BoxShape.circle),
                ),
                Container(
                  height: 6,
                  width: 6,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
                Container(
                  height: 6,
                  width: 6,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
