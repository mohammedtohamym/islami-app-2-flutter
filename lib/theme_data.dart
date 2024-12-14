import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyThemeData {
  static ThemeData myThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: AppColors.primaryDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.black,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.black,
      iconTheme: IconThemeData(color: AppColors.primaryDark),
      centerTitle: true,
    )
  );
}