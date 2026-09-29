import 'package:animal_app/core/utils/theme/theme_dark.dart';
import 'package:animal_app/core/utils/theme/theme_light.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData getLightTheme() {
    return lightTheme;
  }

  static ThemeData getDarkTheme() {
    return darkTheme;
  }
}
