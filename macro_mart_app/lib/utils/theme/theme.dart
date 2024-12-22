import 'package:flutter/material.dart';
import 'package:macro_mart_app/utils/theme/appbar_theme.dart';
import 'package:macro_mart_app/utils/theme/bottom_sheet_theme.dart';
import 'package:macro_mart_app/utils/theme/checkbox_theme.dart';
import 'package:macro_mart_app/utils/theme/outlined_button_theme.dart';
import 'package:macro_mart_app/utils/theme/text_field_theme.dart';
import 'package:macro_mart_app/utils/theme/text_theme.dart';

import 'chip_theme.dart';

class MAppTheme{
  MAppTheme._();

  /// light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTextTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
    chipTheme: MChipTheme.lightChipTheme,
    checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
  );

  /// dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: MChipTheme.darkChipTheme,
    checkboxTheme: MCheckboxTheme.darkCheckboxTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
  );
}