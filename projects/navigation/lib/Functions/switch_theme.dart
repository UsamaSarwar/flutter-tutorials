// Switch Theme Function in Dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Switch Theme Function
void switchTheme(BuildContext context) {
  // Switch Theme Mode using Getx
  Get.changeThemeMode(
    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
  );

}
