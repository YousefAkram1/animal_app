// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> _ar = {
    "splash": {
      "title": "اعثر على أفضل\nرفيق لك معنا",
      "description":
          "انضم إلينا واكتشف الحيوانات الأليفة\nالمناسبة لتفضيلاتك في موقعك",
      "get_started": "ابدأ الآن",
    },
    "home": {
      "title": "اعثر على حيوانك الأليف الأبدي",
      "search": "بحث",
      "categories": "الفئات",
    },
  };
  static const Map<String, dynamic> _en = {
    "splash": {
      "title": "Find Your Best\nCompanion With Us",
      "description":
          "Join & discover the best suitable pets as\nper your preferences in your location",
      "get_started": "Get started",
    },
    "home": {
      "title": "Find Your Forever Pet",
      "search": "Search",
      "categories": "Categories",
    },
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": _ar,
    "en": _en,
  };
}
