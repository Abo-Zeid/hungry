import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
      fontFamily: 'DMSerifDisplay',
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.accentColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor, onSurface: AppColors.blackColor),
      inputDecorationTheme: const InputDecorationTheme(
          fillColor: AppColors.whiteColor,
          filled: true,
          hintStyle: TextStyle(
            fontSize: 15,
            color: AppColors.accentColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: AppColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.redColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.redColor,
            ),
          )));
}
