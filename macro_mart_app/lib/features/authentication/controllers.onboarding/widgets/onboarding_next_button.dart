import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:macro_mart_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:macro_mart_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Positioned(
        right: MSizes.defaultSpace,
        bottom: MDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? MColors.primary : Colors.black),
          child: Icon(Iconsax.arrow_right_3),
        )
    );
  }
}