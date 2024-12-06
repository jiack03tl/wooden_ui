import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class CustomCategoryList extends StatefulWidget {
  const CustomCategoryList({super.key});

  @override
  State<CustomCategoryList> createState() => _CustomCategoryListState();
}

class _CustomCategoryListState extends State<CustomCategoryList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: p8,
                  // child: Image.asset(ImageConst.sofaPng),
                  child: CircleAvatar(
                    radius: 40,
                    child: SvgPicture.asset(
                      ImageConst.icSofa,
                      height: 40,
                      fit: BoxFit.fill,
                      // color: Colors.red,
                    ),
                  ),
                ),
                CustomText(
                    text: "sofa",
                   )
              ],
            );
          }),
    );
  }
}
