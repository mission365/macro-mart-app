import 'package:flutter/material.dart';
import 'package:macro_mart_app/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MDeviceUtils.getAppBarHeight(),
      right: MSizes.defaultSpace,
      child: TextButton(onPressed: () =>OnBoardingController.instance.skipPage(), child: Text('Skip')),
    );
  }
}

