import 'package:flutter/material.dart';
import 'package:furniture_app/Widgets/custom_button.dart';
import 'package:furniture_app/Widgets/custom_number_input.dart';
import 'package:furniture_app/Widgets/custom_text.dart';
import 'package:furniture_app/resources/color_resources.dart';
import 'package:furniture_app/resources/text_resources.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              CustomText(
                text: TextResources.letsGetStarted,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: TextResources.unlockYourDreamSpaceWithAfewTaps,
              ),
              CustomText(
                text: TextResources.mobileNumber,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CustomTextField(
                    hintxt: TextResources.countryCode.toString(),
                    width: 60,
                    hintColor: ColorsRecourse.hintTextColor,
                  ),
                  const SizedBox(width: 8),
                  CustomTextField(
                    keyBoardType: TextInputType.phone,
                    width: 289,
                    hintxt: TextResources.enterMobileNumber,
                    hintColor: ColorsRecourse.hintTextColor,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomElevatedBottun(
                onPress: () {},
                btnColor: ColorsRecourse.inactiveButtonColor,
                txt: TextResources.continueTxt,
                txtColor: ColorsRecourse.grey,
                // borderColor: ColorsRecourse.grey,
              ),
              SizedBox(
                height: 24,
              ),
              CustomElevatedBottun(
                onPress: () {},
                btnColor: ColorsRecourse.inactiveButtonColor,
                txt: TextResources.continueAsGuest,
                txtColor: ColorsRecourse.brown,
                // borderColor: ColorsRecourse.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// file = snak_case
// class = CamelCase
// variable = getUserInfo
// isVisible
//
// getVidiblr*)
