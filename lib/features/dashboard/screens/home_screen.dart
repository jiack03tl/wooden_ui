import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_rating.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/features/dashboard/widgets/bottum_navigation_bar.dart';
import 'package:furniture_app/features/dashboard/widgets/custom_category_list.dart';
import 'package:furniture_app/features/dashboard/widgets/custom_list_view.dart';
import 'package:furniture_app/features/dashboard/widgets/custom_slider.dart';
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
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: ColorsRecourse.bottumNavBar,
      //   indicatorColor: Colors.transparent,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //       log(index.toString());
      //     });
      //   },
      //   selectedIndex: currentPageIndex,
      //   destinations: [
      //     NavigationDestination(
      //       enabled: false,
      //       selectedIcon: SvgPicture.asset(ImageConst.icCart),
      //       icon: SvgPicture.asset(
      //         ImageConst.icHome,
      //         fit: BoxFit.fill,
      //       ),
      //       label: 'cart',
      //     ),
      //     NavigationDestination(
      //       enabled: false,
      //       icon: SvgPicture.asset(
      //         ImageConst.icCategory,
      //       ),
      //       label: "Category",
      //     ),
      //     NavigationDestination(
      //       icon: SvgPicture.asset(
      //         ImageConst.icCart,
      //       ),
      //       label: 'cart',
      //     ),
      //     NavigationDestination(
      //       enabled: false,
      //       icon: SvgPicture.asset(
      //         ImageConst.icProfile,
      //       ),
      //       label: '',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: CustomBottomNavigationBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: p24.copyWith(top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      ImageConst.icLogo,
                      height: 35,
                    ),
                  ),
                  SvgPicture.asset(
                    ImageConst.icLiked,
                  ),
                  gap6,
                  SvgPicture.asset(ImageConst.icSearch),
                  gap6,
                  SvgPicture.asset(ImageConst.icNotif),
                ],
              ),
              CustomSlider(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: TextResources.category,
                          fontsize: 16,
                          fontweight: FontWeight.w700,
                          fontColor: ColorsRecourse.textDarkColor),
                      CustomText(
                          text: TextResources.viewAll,
                          cutLine: TextDecoration.underline,
                          fontsize: 16,
                          fontweight: FontWeight.w400,
                          fontColor: ColorsRecourse.brown),
                    ],
                  ),
                  const CustomCategoryList()
                ],
              ),
              const CustomListView(),
              // GridView.builder(
              //   itemCount: 10,
              //   physics: const NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 20,
              //       mainAxisSpacing: 20,
              //       childAspectRatio: 0.534),
              //   itemBuilder: (BuildContext context, int index) {
              //     return custContainer();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget custContainer() {
  return SizedBox(
    height: 300,
    width: 180,
    child: Column(
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
            children: [
              CustomText(
                text: "Vendors Name",
                fontsize: 14,
                fontColor: Colors.grey,
                fontweight: FontWeight.w400,
              ),
              gap24,
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
            gap10,
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
    ),
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

productTypes() {
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
