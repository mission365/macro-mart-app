import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:macro_mart_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:macro_mart_app/utils/theme/theme.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
