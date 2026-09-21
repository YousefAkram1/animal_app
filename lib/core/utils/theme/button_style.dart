import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppButtonStyle {
  static ButtonStyle splashButtonStyle = ButtonStyle(
    elevation: WidgetStatePropertyAll(10.0),
    shadowColor: WidgetStatePropertyAll(Colors.black.withValues(alpha: 0.20)),

    fixedSize: WidgetStatePropertyAll(Size(297.w, 54.h)),

    backgroundColor: WidgetStatePropertyAll(AppColors.primary),

    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30).r),
    ),
  );
}
