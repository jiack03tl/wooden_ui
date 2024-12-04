import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';
import '../../../utils/constants/image_constants.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<int> list = List.generate(5, (i) => i);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2 - 68;
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
                  fontsize: 14,
                  fontColor: Colors.grey,
                  fontweight: FontWeight.w400,
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
            fontsize: 16,
            fontColor: const Color(0xff0F1313),
            fontweight: FontWeight.w300,
          ),
          Row(
            children: [
              CustomText(
                text: "KWD 599",
                fontsize: 16,
                fontColor: const Color(0xff0F1313),
                fontweight: FontWeight.w600,
              ),
              gap10,
              CustomText(
                cutLine: TextDecoration.lineThrough,
                text: "KWD 599",
                fontsize: 16,
                fontColor: const Color(0xff0F1313),
                fontweight: FontWeight.w300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
