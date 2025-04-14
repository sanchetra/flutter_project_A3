import 'package:ecommerce_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_project/features/authentication/screens/onboarding/widget/onboarding_dot_navigation.dart';
import 'package:ecommerce_project/features/authentication/screens/onboarding/widget/onboarding_next_button.dart';
import 'package:ecommerce_project/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:ecommerce_project/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:ecommerce_project/utils/constants/image_strings.dart';
import 'package:ecommerce_project/utils/device/device_utility.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingSubTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingSubTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingSubTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          OnBoardingSkip(),

          // dot navigation smooth page indicator
          onBoardingDotNavigation(),

          // circular button
          onBoardingNextButton(),
        ],
      ),
    );
  }
}


