import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/Widgets/custom_textfield.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: px24.copyWith(top: 60),
            child: SizedBox(
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                      text: TextResources.profileSetup,
                      fontsize: 28,
                      fontweight: FontWeight.w700,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap12,
                  CustomText(
                      text: TextResources.completeYour,
                      fontsize: 16,
                      fontweight: FontWeight.w300,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomText(
                      text: TextResources.fullName,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterEmail,
                  ),
                  gap24,
                  CustomText(
                      text: TextResources.enterEmail,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterEmail,
                  ),
                  gap24,
                  CustomText(
                      text: TextResources.enterEmail,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  Row(
                    children: [
                      SizedBox(
                        height: 44,
                        width: 85,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            label: CustomText(
                                text: "912",
                                fontsize: 15,
                                fontweight: FontWeight.w300,
                                fontColor: ColorsRecourse.grey),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: ColorsRecourse.grey)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      gap8,
                      Expanded(
                        child: Container(
                          child: SizedBox(
                            height: 44,
                            child: TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                label: CustomText(
                                    text: "912",
                                    fontsize: 15,
                                    fontweight: FontWeight.w300,
                                    fontColor: ColorsRecourse.textDarkColor),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: ColorsRecourse.grey)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomText(
                      text: TextResources.fullName,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterName,
                  ),
                  gap24,
                  CustomText(
                      text: TextResources.fullName,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterName,
                  ),
                  gap24,
                  CustomText(
                      text: TextResources.fullName,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterName,
                  ),
                  gap24,
                  CustomText(
                      text: TextResources.fullName,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterName,
                  ),
                  gap24,
                  CustomText(
                      text: TextResources.fullName,
                      fontsize: 14,
                      fontweight: FontWeight.w400,
                      fontColor: ColorsRecourse.textDarkColor),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterName,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
