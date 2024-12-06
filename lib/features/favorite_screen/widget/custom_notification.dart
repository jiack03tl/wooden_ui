import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';

class CustomNotification extends StatelessWidget {
  String? icon;
  String? message;
  CustomNotification({super.key, this.icon, this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        child: CircleAvatar(
          backgroundColor: Colors.green,
          child: SvgPicture.asset(
            ImageConst.icTick,
            height: 15,
          ),
        ),
      ),
      title: Text.rich(TextSpan(children: [
        const TextSpan(
          text: "Your order has been delivered. Enjoy your purchase! ",
        ),
        TextSpan(
            text: "24 minutes ago",
            style: TextStyle(color: ColorsRecourse.grey))
      ])),
    );
  }
}
