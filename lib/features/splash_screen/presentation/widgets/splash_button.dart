import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ButtonSplash extends StatelessWidget {
  const ButtonSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.5).w,

      child: TextButton(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(10.0),
          shadowColor: WidgetStatePropertyAll(
            Colors.black.withValues(alpha: 0.20),
          ),

          fixedSize: WidgetStatePropertyAll(Size(297.w, 54.h)),

          backgroundColor: WidgetStatePropertyAll(AppColors.primary),

          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30).r),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, AppRouts.homeSceen);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageAssets.petsIcon),
            SizedBox(width: 12.w),
            Text(LocaleKeys.splash_get_started.tr(), style: Fontstyle.medium18),
          ],
        ),
      ),
    );
  }
}
