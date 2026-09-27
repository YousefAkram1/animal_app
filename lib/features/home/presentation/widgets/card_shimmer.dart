import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CardItemShimmer extends StatelessWidget {
  const CardItemShimmer({super.key});

  Widget _box({
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
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              _box(width: 90.w, height: 90.h, radius: 6),

              SizedBox(width: 16.w),

              // Texts
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Breed name
                    _box(width: 110.w, height: 20.h),

                    SizedBox(height: 8.h),

                    // Origin
                    _box(width: 80.w, height: 16.h),

                    SizedBox(height: 6.h),

                    // Life span
                    _box(width: 95.w, height: 16.h),

                    SizedBox(height: 12.h),

                    // Location
                    Row(
                      children: [
                        _box(width: 18.w, height: 18.h, radius: 9),

                        SizedBox(width: 4.w),

                        Expanded(
                          child: _box(width: double.infinity, height: 16.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(width: 8.w),

              // Heart
              Padding(
                padding: EdgeInsets.only(right: 10.w, top: 5.h),
                child: _box(width: 28.w, height: 28.h, radius: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
