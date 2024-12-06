import 'package:flutter/material.dart';
import 'package:furniture_app/features/dashboard/my_address_screen/my_address_screen.dart';
import 'package:furniture_app/features/dashboard/widgets/bottum_navigation_bar.dart';
import 'package:furniture_app/features/favorite_screen/favorite_screen.dart';
import 'package:furniture_app/profile_setup/phone_verification_screen.dart';
import 'package:furniture_app/Widgets/category_screen.dart';
import 'package:furniture_app/about_json/api_call_screen.dart';
import 'package:furniture_app/about_json/faker_json_data.dart';
import 'package:furniture_app/features/dashboard/widgets/grid_to_listview.dart';
import 'package:furniture_app/features/dashboard/widgets/product_description.dart';
import 'package:furniture_app/screen/added_to_cart_screen.dart';
import 'package:furniture_app/screen/dashboard_screen.dart';
import 'package:furniture_app/screen/example_custom_gaps.dart';
import 'package:furniture_app/features/dashboard/screens/home_screen.dart';
import 'package:furniture_app/screen/login_screen.dart';
import 'package:furniture_app/features/profile_screen/screens/profile_screen.dart';
import 'package:furniture_app/screen/profile_setup_screen.dart';
import 'package:furniture_app/screen/splash_screen.dart';
import 'package:furniture_app/screen/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/choose_language_Screen.dart';
// import 'package:furniture_app/fake_json/faker_json_data.dart';
// import 'package:furniture_app/fake_json/local_json_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyAddressScreen(),
    );
  }
}
