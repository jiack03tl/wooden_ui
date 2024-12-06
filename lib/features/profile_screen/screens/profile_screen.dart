import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText(
              text: "Profile",
              fontsize: 16,
              fontweight: FontWeight.w600,
              fontColor: ColorsRecourse.textDarkColor),
        ),
        body: Column(
          children: [
            Stack(children: [
              Container(
                height: 120,
                width: 420,
                color: Colors.brown,
              ),
              // Image.asset("assets/images/brown_rectangle.png"),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: TextResources.welcome,
                        fontsize: 18,
                        fontweight: FontWeight.w700,
                        fontColor: ColorsRecourse.white),
                    gap12,
                    Row(
                      children: [
                        CustomText(
                            text: TextResources.welcomeSalem,
                            fontsize: 16,
                            fontweight: FontWeight.w700,
                            fontColor: ColorsRecourse.white),
                        gap2,
                        SvgPicture.asset(ImageConst.icEdit)
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ],
        )
        // Center(
        // child:
        // ElevatedButton(
        //     onPressed: () {
        //       showModalBottomSheet(
        //           context: context,
        //           builder: (BuildContext context) {
        //             return Container(
        //               height: 367,
        //               width: 420,
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 // mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 16),
        //                     child: Container(
        //                       height: 4,
        //                       width: 30,
        //                       color: Colors.grey,
        //                     ),
        //                   ),
        //                   Container(
        //                       height: 60,
        //                       width: 60,
        //                       color: Colors.blue,
        //                       child: Padding(
        //                         padding: const EdgeInsets.all(3.12),
        //                         child: SvgPicture.asset("assets/oops.svg"),
        //                       )),
        //                   CustomText(
        //                       text: "Delete Account",
        //                       fontsize: 18,
        //                       fontweight: FontWeight.w700,
        //                       fontColor: Colors.black),
        //                   CustomText(
        //                     text:
        //                         "Are you sure want to delete your account permanently/? You will not retrieve your data back.",
        //                     fontsize: 18,
        //                     fontweight: FontWeight.w300,
        //                     fontColor: Colors.black,
        //                   ),
        //                 ],
        //               ),
        //             );
        //           });
        //     },
        //     child: const Text("show bottumsheet"))));
        );
  }
}
