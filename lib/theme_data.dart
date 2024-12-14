import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyThemeData {
  static ThemeData myThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.black,
    )
  );
}