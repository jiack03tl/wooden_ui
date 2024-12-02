import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/screen/choose_language_Screen.dart';
import 'package:furniture_app/screen/home_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../resources/color_resources.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 100, top: 60),
                  child: Text.rich(
                    TextSpan(
                        text: 'design Your\n',
                        style: const TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                        children: <InlineSpan>[
                          TextSpan(
                              text: "Dream ",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: ColorsRecourse.brown,
                                  fontWeight: FontWeight.w700)),
                          const TextSpan(
                              text: "Space ",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                              )),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 95, top: 45),
                child: Image.asset("assets/images/welcome_chair.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: CustomText(
                    text: TextResources.do_EffortlessShopping,
                    fontsize: 18,
                    fontweight: FontWeight.w300,
                    fontColor: ColorsRecourse.textDarkColor),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 30),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CustomText(
                            text: TextResources.letsGetStarted,
                            fontsize: 18,
                            fontweight: FontWeight.w300,
                            fontColor: ColorsRecourse.brown),
                      ),
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setBool("isFirstKeyStatus", true);
                          log(prefs.getBool("isFirstKeyStatus").toString());
                          if (prefs.containsKey("language") == false) {
                            Get.to(const ChooseLanguageScreen());
                          } else {
                            Get.to(const HomeScreen());
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.brown,
                          ),
                          child: const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
