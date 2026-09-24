import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.w,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.only(
            right: 5.w,
            left: 5.w,
            top: 7.h,
            bottom: 9.h,
          ),
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset(
                  ImageAssets.catImage,
                  width: 151.w,
                  height: 140.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 17.h),
              SizedBox(
                width: 146.w,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fluffy",
                          style: Fontstyle.semiBold22.copyWith(fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 92.w,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                ImageAssets.locationIcon,
                                width: 16.w,
                                height: 16.h,
                              ),

                              SizedBox(width: 4.w),

                              Expanded(
                                child: Text(
                                  "location",
                                  style: Fontstyle.regular14.copyWith(
                                    fontSize: 10.sp,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      ImageAssets.heartFrame,
                      width: 26.w,
                      height: 26.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
