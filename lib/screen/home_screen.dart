import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: ColorsRecourse.bottumNavBar,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            log(index.toString());
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            // enabled: false,
            selectedIcon: SvgPicture.asset(ImageConst.cart),
            icon: SvgPicture.asset(ImageConst.category),
            label: '1212',
          ),
          NavigationDestination(
            enabled: false,
            selectedIcon: SvgPicture.asset(
              ImageConst.cart,
              height: 50,
              width: 50,
            ),
            icon: SvgPicture.asset(
              ImageConst.cart,
            ),
            label: '',
          ),
          NavigationDestination(
            enabled: false,
            selectedIcon: SvgPicture.asset(
              ImageConst.cart,
              height: 50,
              width: 50,
            ),
            icon: SvgPicture.asset(
              ImageConst.cart,
            ),
            label: '',
          ),
          NavigationDestination(
            enabled: false,
            selectedIcon: SvgPicture.asset(
              ImageConst.cart,
              height: 50,
              width: 50,
            ),
            icon: SvgPicture.asset(
              ImageConst.cart,
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 24.0, top: 40, left: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      ImageConst.cart,
                      height: 35,
                    ),
                  ),
                  SvgPicture.asset(
                    ImageConst.search,
                  ),
                  SvgPicture.asset(ImageConst.search),
                  SvgPicture.asset(ImageConst.cart),
                ],
              ),
              Stack(children: [
                SizedBox(
                  height: 152,
                  width: 395,
                  child: CarouselView(itemExtent: 392, children: [
                    Image.network(
                      "https://www.umodern.com/fimages/71083.jpg",
                      fit: BoxFit.fill,
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10),
                  child: CustomText(
                      text: TextResources.evalteYourSpace,
                      fontsize: 20,
                      fontweight: FontWeight.w700,
                      fontColor: Colors.white),
                )
              ]),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14, right: 4),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                          color: Colors.brown, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, right: 4),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, right: 4),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.534),
                itemBuilder: (BuildContext context, int index) {
                  return custContainer();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget custContainer() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(children: [
        Container(
          height: 181,
          width: 181,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(ImageConst.chair), fit: BoxFit.fill),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF)),
            child: const Icon(
              Icons.favorite_border,
              color: Color(0xff7A8183),
            ),
          ),
        )
      ]),
      gap16,
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Vendors Name",
              fontsize: 14,
              fontColor: Colors.grey,
              fontweight: FontWeight.w400,
            ),
            CustomRating(
              fontweight: FontWeight.w400,
              fontsize: 14,
            ),
          ],
        ),
      ),
      CustomText(
        text: "Pashe Fabric Accent Chair",
        fontsize: 16,
        fontColor: const Color(0xff0F1313),
        fontweight: FontWeight.w300,
      ),
      Row(
        children: [
          CustomText(
            text: "KWD 599",
            fontsize: 16,
            fontColor: const Color(0xff0F1313),
            fontweight: FontWeight.w600,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomText(
            cutLine: TextDecoration.lineThrough,
            text: "KWD 599",
            fontsize: 16,
            fontColor: const Color(0xff0F1313),
            fontweight: FontWeight.w300,
          ),
        ],
      ),
    ],
  );
}

productDescription() {
  Column(
    children: [
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Vendors Name",
              fontsize: 14,
              fontColor: Colors.grey,
              fontweight: FontWeight.w400,
            ),
            CustomRating(
              fontweight: FontWeight.w400,
              fontsize: 14,
            ),
          ],
        ),
      ),
      CustomText(
        text: "Pashe Fabric Accent Chair",
        fontsize: 16,
        fontColor: const Color(0xff0F1313),
        fontweight: FontWeight.w300,
      ),
    ],
  );
}
