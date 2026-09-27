import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class AnimalDetailsShimmer extends StatelessWidget {
  const AnimalDetailsShimmer({super.key});

  Widget shimmerBox({
    required double width,
    required double height,
    double radius = 4,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(radius.r),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 308.h,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 308.h,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 54.h,
                      left: 16.w,
                      right: 16.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        shimmerBox(width: 24.w, height: 24.h, radius: 12),
                        shimmerBox(width: 31.w, height: 31.h, radius: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          shimmerBox(width: 130.w, height: 32.h, radius: 5),

                          SizedBox(height: 7.h),
                          Row(
                            children: [
                              shimmerBox(width: 18.w, height: 18.h, radius: 9),

                              SizedBox(width: 4.w),

                              shimmerBox(width: 105.w, height: 16.h, radius: 4),
                            ],
                          ),
                        ],
                      ),

                      const Spacer(),
                      shimmerBox(width: 65.w, height: 30.h, radius: 5),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      shimmerBox(width: 105.w, height: 38.h, radius: 20),

                      SizedBox(width: 10.w),

                      shimmerBox(width: 105.w, height: 38.h, radius: 20),

                      SizedBox(width: 10.w),

                      shimmerBox(width: 80.w, height: 38.h, radius: 20),
                    ],
                  ),

                  SizedBox(height: 21.h),

                  shimmerBox(width: 90.w, height: 25.h, radius: 5),
                  SizedBox(height: 10.h),
                  shimmerBox(width: double.infinity, height: 16.h, radius: 4),

                  SizedBox(height: 7.h),

                  shimmerBox(width: double.infinity, height: 16.h, radius: 4),

                  SizedBox(height: 7.h),

                  shimmerBox(width: 280.w, height: 16.h, radius: 4),

                  SizedBox(height: 21.h),
                  Container(
                    width: 343.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
