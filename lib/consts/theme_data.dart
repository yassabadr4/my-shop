import 'package:flutter/material.dart';
import 'package:new_ecommerce_app/consts/app_colors.dart';

class Styles {
  static ThemeData themeData(
      {required bool isDark, required BuildContext context}) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDark ? AppColors.darkScaffoldColor : AppColors.lightScaffoldColor,
        cardColor: isDark
            ? const Color.fromARGB(255, 13, 6, 37)
            : AppColors.lightScaffoldColor,
        brightness: isDark ? Brightness.dark : Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: isDark
              ? AppColors.darkScaffoldColor
              : AppColors.lightScaffoldColor,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color:   isDark ? Colors.white : Colors.black
          )
        ));
  }
}
