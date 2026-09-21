import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppStrings.homeTitle, style: Fontstyle.bold24),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(right: 8).w,
          child: SvgPicture.asset(
            width: 24.w,
            height: 24.h,
            ImageAssets.notificationIcon,
          ),
        ),
      ],
    );
  }
}
