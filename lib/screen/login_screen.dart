import 'dart:developer';

import 'package:flutter/material.dart';
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
      body: Center(
        child: GestureDetector(
          onTap: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString("logInStatus", "login");
            var showStatus = prefs.getString("logInStatus");
            log(showStatus.toString());
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DashboardScreen()));
          },
          child: Container(
            height: 50,
            width: 300,
            color: Colors.green,
            child: const Center(
              child: Text("Login"),
            ),
          ),
        ),
      ),
    );
  }
}
