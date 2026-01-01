import 'package:flutter/material.dart';

class AppTextStyle {
  static getTtileTextStyle(BuildContext context,
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? Colors.white);
  }

  static getbodyTextStyle(BuildContext context,
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.white);
  }

  static getSmallTextStyle(BuildContext context,
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w100,
        color: color ?? Colors.white);
  }
}
