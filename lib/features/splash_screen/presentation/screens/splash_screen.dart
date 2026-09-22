import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/splash_screen/presentation/widgets/splash_button.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22).w,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 15).h,
              child: Image.asset(
                width: 442.w,
                height: 305.h,
                ImageAssets.splashImage,
              ),
            ),
            SizedBox(height: 50.h),
            Text(LocaleKeys.splash_title.tr(), style: Fontstyle.bold32),
            Text(
              LocaleKeys.splash_description.tr(),
              style: Fontstyle.regular16,
            ),
            SizedBox(height: 61.h),
            ButtonSplash(),
          ],
        ),
      ),
    );
  }
}
