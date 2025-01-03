import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macro_mart_app/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class MFormDivider extends StatelessWidget {
  const MFormDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? MColors.darkGrey : MColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(dividerText, style: Theme.of(context).textTheme.labelSmall,),
        Flexible(child: Divider(color: dark ? MColors.darkGrey : MColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),

      ],
    );
  }
}