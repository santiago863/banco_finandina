import 'package:flutter/material.dart';
import 'theme_colors.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    primaryColor: AppColor.primary,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    scaffoldBackgroundColor: AppColor.primary,
    toggleableActiveColor: AppColor.primary,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: AppColor.primary,
        primary: AppColor.primary,
      ),
    ),
  );
}
