import 'package:flutter/material.dart';
import 'package:macro_mart_app/utils/constants/sizes.dart';

class MSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MSizes.appBarHeight,
    left: MSizes.defaultSpace,
    bottom: MSizes.defaultSpace,
    right: MSizes.defaultSpace,
  );
}