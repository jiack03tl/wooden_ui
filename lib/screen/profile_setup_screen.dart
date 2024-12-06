import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_button.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/Widgets/custom_textfield.dart';
import 'package:furniture_app/features/dashboard/screens/home_screen.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';
import 'package:furniture_app/utils/constants/ui_constants.dart';
import 'package:furniture_app/utils/extension/build_context_extension.dart';
import 'package:furniture_app/utils/extension/text_style_extension.dart';
import 'package:furniture_app/widgets/phone_number.dart';
import 'package:furniture_app/widgets/phone_number_country_code.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  List<String> city = ["city1", "city2", "city3"];
  var dropdownValue;

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
                    style: context.titleMedium.copyWith(
                        fontSize: fSize28, fontWeight: FontWeight.w700),
                  ),
                  gap12,
                  CustomText(
                    text: TextResources.completeYour,
                    style: context.labelMedium.copyWith(
                      fontSize: fSize16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  gap6,
                  CustomText(
                    text: TextResources.fullName,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.fullName,
                  ),
                  gap24,
                  CustomText(
                    text: TextResources.enterEmail,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterEmail,
                  ),
                  gap24,
                  CustomText(
                    text: TextResources.mobileNumber,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  const Row(
                    children: [
                      SizedBox(
                          height: 44, width: 85, child: PhoneNumberWidget()),
                      gap12,
                      Expanded(
                        child: SizedBox(height: 44, child: PhoneNumber()),
                      ),
                    ],
                  ),
                  gap12,
                  CustomText(
                    text: TextResources.governet,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  DropdownMenu<String>(
                    width: 382,
                    initialSelection: city.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        city.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  gap24,
                  CustomText(
                    text: TextResources.area,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  DropdownMenu<String>(
                    width: 382,
                    initialSelection: city.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        city.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  gap24,
                  CustomText(
                    text: TextResources.streetNo,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterStreet,
                  ),
                  gap24,
                  CustomText(
                    text: TextResources.fullName,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.building,
                  ),
                  gap24,
                  CustomText(
                    text: TextResources.floor,
                    style: context.labelMedium
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  gap6,
                  CustomTextfield(
                    hintText: TextResources.enterFloor,
                  ),
                  gap30,
                  CustomElevatedBottun(
                      txtColor: ColorsRecourse.white,
                      onPress: () {},
                      btnColor: ColorsRecourse.brown,
                      txt: TextResources.submit),
                  gap16
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
