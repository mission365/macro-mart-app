import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:macro_mart_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:macro_mart_app/utils/constants/colors.dart';
import 'package:macro_mart_app/utils/constants/sizes.dart';
import 'package:macro_mart_app/utils/constants/text_strings.dart';
import 'package:macro_mart_app/utils/device/device_utility.dart';
import 'package:macro_mart_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../controllers.onboarding/widgets/onboarding_dot_navigation.dart';
import '../../controllers.onboarding/widgets/onboarding_next_button.dart';
import '../../controllers.onboarding/widgets/onboarding_page.dart';
import '../../controllers.onboarding/widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  image: MImages.onBoardingImage1,
                  title: MTexts.onBoardingTitle1,
                  subTitle: MTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: MImages.onBoardingImage2,
                  title: MTexts.onBoardingTitle2,
                  subTitle: MTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: MImages.onBoardingImage3,
                  title: MTexts.onBoardingTitle3,
                  subTitle: MTexts.onBoardingSubTitle3),
            ],
          ),

          ///Skip Button
          OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          OnBoardingNavigation(),

          /// Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}


