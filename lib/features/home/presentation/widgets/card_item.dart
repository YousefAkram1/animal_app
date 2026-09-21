import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      elevation: 1,

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6).h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImageAssets.catImage),
            SizedBox(width: 16.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Joli", style: Fontstyle.bold18),
                SizedBox(height: 4.h),
                Text("Female", style: Fontstyle.regular14),
                Text("5 Months Old", style: Fontstyle.regular14),
                SizedBox(height: 9.h),
                Row(
                  children: [
                    SvgPicture.asset(ImageAssets.locationIcon),
                    SizedBox(width: 4.w),
                    Text("1.6 km away", style: Fontstyle.regular14),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 5).h,
              child: SvgPicture.asset(
                width: 28.w,
                height: 28.h,
                ImageAssets.heartIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
