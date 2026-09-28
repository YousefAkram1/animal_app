import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 308.h,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Expanded(
            child: FancyShimmerImage(
              imageUrl: imageUrl,
              boxFit: BoxFit.cover,
              shimmerBaseColor: AppColors.primary,
              shimmerHighlightColor: Colors.grey.shade100,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 54, left: 16, right: 16).w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  width: 24.w,
                  height: 24.h,
                  ImageAssets.arrowLeftIcon,
                ),
              ),

              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  width: 31.w,
                  height: 31.h,
                  ImageAssets.fullHeartIcon,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
