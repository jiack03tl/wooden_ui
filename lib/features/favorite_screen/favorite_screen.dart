import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/features/favorite_screen/widget/custom_notification.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
            CustomNotification(),
            gap24,
          ],
        ),
      ),
    );
  }
}
