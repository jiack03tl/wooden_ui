import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/screen/dashboard_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              // GestureDetector(
              //   onTap: () async {
              //     SharedPreferences prefs =
              //         await SharedPreferences.getInstance();
              //     prefs.setString("logInStatus", "login");
              //     var showStatus = prefs.getString("logInStatus");
              //     log(showStatus.toString());
              //     Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const DashboardScreen()));
              //   },
              // ),
              Text.rich(
                TextSpan(
                    text: 'By continuing, I agree to the \n',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                    children: <InlineSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('Tap Here onTap'),
                          text: "Teram and condition ",
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsRecourse.brown,
                              fontWeight: FontWeight.w300)),
                      const TextSpan(
                          text: "Space ",
                          style: TextStyle(
                            // decorationStyle: ,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          )),
                      const TextSpan(
                          text: "privacy policy ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.brown)),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
