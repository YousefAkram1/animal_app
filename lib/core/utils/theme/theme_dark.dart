import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: const Color(0xff121212),
  fontFamily: FontFamily.poppins,

  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xff1A1A1A),
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      elevation: const WidgetStatePropertyAll(10.0),

      shadowColor: WidgetStatePropertyAll(Colors.black.withValues(alpha: 0.35)),

      fixedSize: WidgetStatePropertyAll(Size(297.w, 54.h)),

      backgroundColor: WidgetStatePropertyAll(AppColors.primary),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30).r),
      ),
    ),
  ),
);
