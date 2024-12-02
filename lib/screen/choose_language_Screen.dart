import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_button.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/screen/home_screen.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  String lang = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsRecourse.chooseLangBgColor,
      body: Stack(children: [
        SvgPicture.asset(
          "assets/images/splash.png",
          height: 400,
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 589),
                child: CustomText(
                    text: TextResources.chooseLang,
                    fontsize: 28,
                    fontweight: FontWeight.w700,
                    fontColor: ColorsRecourse.textDarkColor),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: 242,
                  width: 382,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 342,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border.all(
                                width: 1, color: ColorsRecourse.grey_),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                  splashRadius: 20,
                                  value: "English",
                                  groupValue: lang,
                                  onChanged: (value) {
                                    setState(() {
                                      lang = value.toString();
                                      log("selected lang is: " +
                                          lang.toString());
                                    });
                                  }),
                              CustomText(
                                  text: TextResources.english,
                                  fontsize: 16,
                                  fontweight: FontWeight.w300,
                                  fontColor: ColorsRecourse.blueText)
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: 52,
                          width: 342,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              border: Border.all(
                                  width: 1, color: ColorsRecourse.grey_),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Radio(
                                  splashRadius: 10,
                                  value: "Arabic",
                                  groupValue: lang,
                                  onChanged: (value) {
                                    setState(() {
                                      lang = value.toString();
                                      log("selected lang is: " +
                                          lang.toString());
                                    });
                                  }),
                              CustomText(
                                  text: TextResources.arabic,
                                  fontsize: 16,
                                  fontweight: FontWeight.w300,
                                  fontColor: ColorsRecourse.blueText),
                            ],
                          ),
                        ),
                        gap16,
                        CustomElevatedBottun(
                          onPress: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setString("language", lang);
                            log(prefs.getString("language").toString());

                            Get.to(const HomeScreen());
                          },
                          txt: TextResources.continueTxt,
                          txtColor: Colors.white,
                          btnColor: ColorsRecourse.brown,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
