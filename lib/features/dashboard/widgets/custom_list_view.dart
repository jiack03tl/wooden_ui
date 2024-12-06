import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/features/dashboard/widgets/product_items.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';
import '../../../utils/constants/image_constants.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<int> list = List.generate(5, (i) => i);
  @override
  Widget build(BuildContext context) {
    var widthS = MediaQuery.of(context).size.width / 2 - 30;
    return ListView.builder(
        shrinkWrap: true,
        primary: true,
        itemCount: (list.length / 2).round(),
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: widthS, child: const ProductItems()),
              gap6,
              if (index * 2 + 1 < list.length)
                SizedBox(
                  width: widthS,
                  child: const ProductItems(),
                )
              else
                const SizedBox.shrink(),
            ],
          );
        });
  }
}
