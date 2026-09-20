import 'package:animal_app/core/utils/theme/button_style.dart';
import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
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
        style: AppButtonStyle.splashButtonStyle,
        onPressed: () {
          Navigator.pushNamed(context, AppRouts.homeSceen);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageAssets.petsIcon),
            SizedBox(width: 12.w),
            Text(AppStrings.getStarted, style: Fontstyle.medium18),
          ],
        ),
      ),
    );
  }
}
