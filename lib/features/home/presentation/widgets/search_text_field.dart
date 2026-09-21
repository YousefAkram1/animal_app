import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: AppStrings.search,
        hintStyle: Fontstyle.regular16,

        filled: true,
        fillColor: AppColors.textFieldColor,

        prefixIcon: Padding(
          padding: EdgeInsets.all(8.w),
          child: SvgPicture.asset(
            ImageAssets.searchIcon,
            width: 20.w,
            height: 20.h,
            colorFilter: ColorFilter.mode(
              AppColors.iconTextFieldColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.all(8.w),
          child: SvgPicture.asset(
            ImageAssets.settingIcon,
            width: 20.w,
            height: 20.h,
            colorFilter: ColorFilter.mode(
              AppColors.iconTextFieldColor,
              BlendMode.srcIn,
            ),
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.textFieldColor, width: 1),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.textFieldColor, width: 1),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.textFieldColor, width: 1),
        ),
      ),
    );
  }
}
