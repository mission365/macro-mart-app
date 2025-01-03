import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:iconsax/iconsax.dart';
import 'package:macro_mart_app/common/styles/spacing_style.dart';
import 'package:macro_mart_app/common/widgets.login_signup/social_buttons.dart';
import 'package:macro_mart_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:macro_mart_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:macro_mart_app/utils/constants/image_strings.dart';
import 'package:macro_mart_app/utils/constants/sizes.dart';
import 'package:macro_mart_app/utils/constants/text_strings.dart';
import 'package:macro_mart_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets.login_signup/form_divider.dart';
import '../../../../utils/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title, sub-title
              MLoginHeader(dark: dark),

              /// Form
              MLoginForm(),

              ///Dividrer'
              MFormDivider(dividerText: MTexts.orSignInWith.capitalize!),

              SizedBox(height: MSizes.spaceBtwSections,),

              ///Footer
              MSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}




