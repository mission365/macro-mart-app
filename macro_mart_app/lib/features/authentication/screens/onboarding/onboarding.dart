import 'package:flutter/material.dart';
import 'package:macro_mart_app/utils/constants/sizes.dart';
import 'package:macro_mart_app/utils/constants/text_strings.dart';
import 'package:macro_mart_app/utils/device/device_utility.dart';
import 'package:macro_mart_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../controllers.onboarding/widgets/onboarding_page.dart';
import '../../controllers.onboarding/widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
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

          /// Circular Button
        ],
      ),
    );
  }
}


