import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/features/profile_screen/widget/custom_options.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/image_constants.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText(
            text: "Profile",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 120,
                  width: 420,
                  color: Colors.brown,
                ),
                // Image.asset("assets/images/brown_rectangle.png"),
                Padding(
                  padding: padXY(24, 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: TextResources.welcome,
                      ),
                      gap12,
                      Row(
                        children: [
                          CustomText(
                            text: TextResources.welcomeSalem,
                          ),
                          gap2,
                          SvgPicture.asset(ImageConst.icEdit)
                        ],
                      ),
                    ],
                  ),
                )
              ]),
              CustomOptions(
                leadingIcon: ImageConst.icShopping,
                txt: TextResources.my_Orders,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icAddress,
                txt: TextResources.my_Address,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icRefund,
                txt: TextResources.returnRefund,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icReview,
                txt: TextResources.my_Reviews,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icLanguae,
                txt: TextResources.chooseLang,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap14,
              Divider(
                thickness: 2,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icFaq,
                txt: TextResources.aboutUs,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icTerms,
                txt: TextResources.termsConditions,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icRefund,
                txt: TextResources.returnPolicy,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icShipping,
                txt: TextResources.aboutUs,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap4,
              CustomOptions(
                leadingIcon: ImageConst.icContact,
                txt: TextResources.contactUs,
                trailingIcon: ImageConst.icMobileDownArrow,
              ),
              gap8,
              SizedBox(
                width: 382,
                height: 45,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.brown,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      side: BorderSide(color: ColorsRecourse.brown),
                    ),
                    onPressed: () {},
                    child: const Text("Logout")),
              ),
              gap16,
              CustomText(
                text: TextResources.deleteAccount,
              ),
              gap12,
              CustomText(
                text: TextResources.appVersion,
              ),
            ],
          ),
        )
        // Center(
        // child:
        // ElevatedButton(
        //     onPressed: () {
        //       showModalBottomSheet(
        //           context: context,
        //           builder: (BuildContext context) {
        //             return Container(
        //               height: 367,
        //               width: 420,
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 // mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 16),
        //                     child: Container(
        //                       height: 4,
        //                       width: 30,
        //                       color: Colors.grey,
        //                     ),
        //                   ),
        //                   Container(
        //                       height: 60,
        //                       width: 60,
        //                       color: Colors.blue,
        //                       child: Padding(
        //                         padding: const EdgeInsets.all(3.12),
        //                         child: SvgPicture.asset("assets/oops.svg"),
        //                       )),
        //                   CustomText(
        //                       text: "Delete Account",
        //                       fontsize: 18,
        //                       fontweight: FontWeight.w700,
        //                       fontColor: Colors.black),
        //                   CustomText(
        //                     text:
        //                         "Are you sure want to delete your account permanently/? You will not retrieve your data back.",
        //                     fontsize: 18,
        //                     fontweight: FontWeight.w300,
        //                     fontColor: Colors.black,
        //                   ),
        //                 ],
        //               ),
        //             );
        //           });
        //     },
        //     child: const Text("show bottumsheet"))));
        );
  }
}
