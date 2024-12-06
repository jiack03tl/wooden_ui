import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/screen/choose_language_Screen.dart';
import 'package:furniture_app/screen/dashboard_screen.dart';
import 'package:furniture_app/features/dashboard/screens/home_screen.dart';
import 'package:furniture_app/screen/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // checking the login in sp and redirect to screen according

  checkStatus() async {
    log("in the checkstatus");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("isFirstKeyStatus") == false ||
        prefs.containsKey("isFirstKeyStatus") == false) {
      log("no need to go welcome page");

      Get.to(const WelcomeScreen());
    } else if (prefs.containsKey("language") == false) {
      Get.to(const ChooseLanguageScreen());
    } else {
      Get.to(const ChooseLanguageScreen());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), checkStatus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsRecourse.brown,
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => LogInScreen()));
          },
          child: Stack(
            children: [
              Image.asset("assets/images/splash.png"),
              const Center(
                child: Text(
                  "Athathi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
