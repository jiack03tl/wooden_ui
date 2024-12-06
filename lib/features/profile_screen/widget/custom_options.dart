import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class CustomOptions extends StatelessWidget {
  String trailingIcon;
  String leadingIcon;
  String txt;
  CustomOptions(
      {super.key,
      required this.trailingIcon,
      required this.txt,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      child: ListTile(
        title: Container(
          child: Row(
            children: [
              SvgPicture.asset(leadingIcon),
              gap4,
              Expanded(
                child: CustomText(
                    text: txt,
                  ),
              ),
            ],
          ),
        ),
        trailing: SvgPicture.asset(trailingIcon),
      ),
    );
  }
}
