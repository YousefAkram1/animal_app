import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyLarge: Fontstyle.bold32,
    bodyMedium: Fontstyle.regular16,
    bodySmall: Fontstyle.medium18,
  ),
  primaryColor: Color(0xff44BDB6),
  scaffoldBackgroundColor: Color(0xffFFFFFF),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xff44BDB6),
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      elevation: WidgetStatePropertyAll(10.0),
      shadowColor: WidgetStatePropertyAll(Colors.black.withValues(alpha: 0.20)),

      fixedSize: WidgetStatePropertyAll(Size(297.w, 54.h)),

      backgroundColor: WidgetStatePropertyAll(AppColors.primary),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30).r),
      ),
    ),
  ),
);
