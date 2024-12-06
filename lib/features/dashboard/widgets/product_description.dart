import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/Widgets/custom_text.dart';

class CustomGridview extends StatefulWidget {
  const CustomGridview({super.key});

  @override
  State<CustomGridview> createState() => _CustomGridviewState();
}

class _CustomGridviewState extends State<CustomGridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/chair.png"),
                        fit: BoxFit.fill),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFFFFFF)),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(0xff7A8183),
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Vendors Name",
                ),
                CustomRating(
                  fontweight: FontWeight.w400,
                  fontsize: 14,
                ),
              ],
            ),
            CustomText(
              text: "Pashe Fabric Accent Chair",
            ),
            Row(
              children: [
                CustomText(
                  text: "KWD 599",
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: "KWD 599",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
