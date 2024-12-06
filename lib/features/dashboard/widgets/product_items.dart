import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

import '../../../widgets/custom_text.dart';

class ProductItems extends StatefulWidget {
  const ProductItems({super.key});

  @override
  State<ProductItems> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(ImageConst.chair), fit: BoxFit.fill),
                  color: Colors.grey,
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
          gap16,
          Expanded(
            child: Row(
              children: [
                CustomText(
                  text: "Vendors Name",
                ),
                gap24,
                CustomRating(
                  fontweight: FontWeight.w400,
                  fontsize: 14,
                ),
              ],
            ),
          ),
          CustomText(
            text: "Pashe Fabric Accent Chair",
          ),
          Row(
            children: [
              CustomText(
                text: "KWD 599",
              ),
              gap10,
              // CustomText(
              //   text: "KWD 599",
              //   style: TextStyle(
              //     fontweight: FontWeight.w300,
              //
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
