import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/category_screen.dart';
import 'package:furniture_app/features/dashboard/screens/home_screen.dart';
import 'package:furniture_app/features/profile_screen/screens/profile_screen.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List pages = [HomeScreen(), Categoryscreen(), ProfileScreen()];
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: i,
        onTap: (int index) {
          setState(() {
            i = index;
          });
        },
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        // landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SvgPicture.asset(ImageConst.icHome),
            label: "home",
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(ImageConst.icCategory),
              label: "Category"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(ImageConst.icCart),
              label: "Cart"),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SvgPicture.asset(ImageConst.icProfile),
            label: "Profile",
          ),
        ]);
  }
}
