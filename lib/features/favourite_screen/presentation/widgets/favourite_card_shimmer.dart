import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class FavouriteCardShimmer extends StatelessWidget {
  const FavouriteCardShimmer({super.key});

  Widget _shimmerBox({
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
      child: SizedBox(
        width: 162.w,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
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
                _shimmerBox(width: 151.w, height: 140.h, radius: 8),

                SizedBox(height: 17.h),

                SizedBox(
                  width: 146.w,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _shimmerBox(width: 65.w, height: 17.h, radius: 4),

                          SizedBox(height: 6.h),

                          SizedBox(
                            width: 92.w,
                            child: Row(
                              children: [
                                _shimmerBox(
                                  width: 16.w,
                                  height: 16.h,
                                  radius: 8,
                                ),

                                SizedBox(width: 4.w),

                                Expanded(
                                  child: _shimmerBox(
                                    width: double.infinity,
                                    height: 12.h,
                                    radius: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      // Heart
                      _shimmerBox(width: 26.w, height: 26.h, radius: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
