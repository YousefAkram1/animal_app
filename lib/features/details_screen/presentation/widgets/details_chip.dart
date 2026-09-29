import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsChips extends StatelessWidget {
  const DetailsChips({super.key, required this.age});
  final String age;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 21.w,
        children: [
          Chip(
            backgroundColor: AppColors.chipsUnSelectedColor,
            label: Column(
              children: [
                Text(
                  "Gender",
                  style: Fontstyle.medium18.copyWith(color: Colors.black),
                ),
                Text(
                  "Male",
                  style: Fontstyle.medium18.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),
          Chip(
            backgroundColor: AppColors.chipsUnSelectedColor,
            label: Column(
              children: [
                Text(
                  "Age",
                  style: Fontstyle.medium18.copyWith(color: Colors.black),
                ),
                Text(
                  age,
                  style: Fontstyle.medium18.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),
          Chip(
            backgroundColor: AppColors.chipsUnSelectedColor,
            label: Column(
              children: [
                Text(
                  "Weight",
                  style: Fontstyle.medium18.copyWith(color: Colors.black),
                ),
                Text(
                  "10 kg",
                  style: Fontstyle.medium18.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
