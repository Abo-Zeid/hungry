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
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        backgroundColor:  Colors.white,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.blackColor,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor, onSurface: AppColors.blackColor),
      inputDecorationTheme: const InputDecorationTheme(
          fillColor: AppColors.accentColor,
          filled: true,
          hintStyle: TextStyle(
            fontSize: 15,
            color: AppColors.greyColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.redColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.redColor,
            ),
          )));
}
