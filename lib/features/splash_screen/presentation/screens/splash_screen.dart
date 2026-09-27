import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/core/widgets/app_button.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            AppButton(
              width: 297.w,
              height: 54.h,
              onPressed: () {
                Navigator.pushNamed(context, AppRouts.homeSceen);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageAssets.petsIcon),
                  SizedBox(width: 12.w),
                  Text(
                    LocaleKeys.splash_get_started.tr(),
                    style: Fontstyle.medium18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
