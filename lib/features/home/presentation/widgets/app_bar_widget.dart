import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: Icon(size: 28.sp, Icons.notifications_none_outlined),
        ),
      ],
    );
  }
}
