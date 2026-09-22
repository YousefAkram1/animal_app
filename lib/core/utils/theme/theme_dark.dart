import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyLarge: Fontstyle.bold32.copyWith(color: Colors.white),
    bodyMedium: Fontstyle.regular16.copyWith(color: Colors.white),
    bodySmall: Fontstyle.regular14.copyWith(color: Colors.white),
  ),
  // General Colors
  primaryColor: const Color(0xff44BDB6),
  scaffoldBackgroundColor: const Color(0xff121212),

  colorScheme: const ColorScheme.dark(
    primary: Color(0xff44BDB6),
    onPrimary: Color(0xff121212),

    secondary: Color(0xff80CBC4),
    onSecondary: Color(0xff121212),

    surface: Color(0xff1E1E1E),
    onSurface: Color(0xffFFFFFF),

    error: Color(0xffEF5350),
    onError: Color(0xffFFFFFF),
  ),

  // AppBar
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xff1E1E1E),
    elevation: 0,

    iconTheme: const IconThemeData(color: Colors.white),

    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
  ),

  // Text Buttons
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      elevation: const WidgetStatePropertyAll(4.0),

      shadowColor: WidgetStatePropertyAll(Colors.black.withValues(alpha: 0.30)),

      fixedSize: WidgetStatePropertyAll(Size(297.w, 54.h)),

      backgroundColor: const WidgetStatePropertyAll(Color(0xff44BDB6)),

      foregroundColor: const WidgetStatePropertyAll(Color(0xff121212)),

      overlayColor: WidgetStatePropertyAll(
        Colors.white.withValues(alpha: 0.10),
      ),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      ),
    ),
  ),

  // Text Fields
  inputDecorationTheme: InputDecorationTheme(
    filled: true,

    fillColor: const Color(0xff2A2A2A),

    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),

    hintStyle: const TextStyle(color: Color(0xff9E9E9E)),

    labelStyle: const TextStyle(color: Color(0xffBDBDBD)),

    prefixIconColor: const Color(0xffB0B0B0),

    suffixIconColor: const Color(0xffB0B0B0),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Color(0xff3A3A3A), width: 1),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Color(0xff3A3A3A), width: 1),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Color(0xff44BDB6), width: 1.5),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Color(0xffEF5350), width: 1),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(color: Color(0xffEF5350), width: 1.5),
    ),
  ),
);
