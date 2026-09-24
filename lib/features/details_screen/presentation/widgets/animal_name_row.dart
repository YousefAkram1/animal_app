import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AnimalNameRow extends StatelessWidget {
  const AnimalNameRow({super.key, required this.name, required this.location});
  final String name;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Fontstyle.bold24.copyWith(fontSize: 28.sp)),
            SizedBox(
              width: 151,
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageAssets.locationIcon,
                    width: 18.w,
                    height: 18.h,
                  ),

                  SizedBox(width: 4.w),

                  Expanded(
                    child: Text(
                      location,
                      style: Fontstyle.regular14,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          "\$95",
          style: Fontstyle.bold24.copyWith(
            fontSize: 26.sp,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
