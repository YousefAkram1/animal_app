import 'package:animal_app/core/utils/theme/theme_light.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          LocaleKeys.home_title.tr(),
          style: lightTheme.textTheme.bodyLarge!.copyWith(fontSize: 24.sp),
        ),
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
