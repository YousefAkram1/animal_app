import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 9).h,
        hintText: LocaleKeys.home_search.tr(),
        hintStyle: Fontstyle.regular16,

        filled: true,
        fillColor: AppColors.textFieldColor,

        prefixIcon: Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 10).h,
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
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
