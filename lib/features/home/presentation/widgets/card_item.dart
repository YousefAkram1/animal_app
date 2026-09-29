import 'package:animal_app/core/utils/models/breed.dart';
import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/home/data/cubit/send_favourite_cubit.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.breed,
    required this.image,
    required this.id,
  });
  final Breed breed;
  final String image;
  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouts.animalDetailsSceen,
          arguments: id,
        );
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8).r,
                ),
                child: FancyShimmerImage(
                  shimmerBaseColor: AppColors.primary,
                  shimmerHighlightColor: Colors.grey.shade100,
                  boxFit: BoxFit.fill,
                  imageUrl: image,
                  width: 90.w,
                  height: 90.h,
                ),
              ),

              SizedBox(width: 16.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(breed.name ?? 'Unknown', style: Fontstyle.bold18),

                    SizedBox(height: 4.h),

                    Text(breed.origin ?? 'Unknown', style: Fontstyle.regular14),

                    Text(
                      breed.lifeSpan ?? 'Unknown',
                      style: Fontstyle.regular14,
                    ),

                    SizedBox(height: 9.h),

                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageAssets.locationIcon,
                          width: 18.w,
                          height: 18.h,
                        ),

                        SizedBox(width: 4.w),

                        Expanded(
                          child: Text(
                            breed.origin ?? 'Unknown',
                            style: Fontstyle.regular14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 10.w, top: 5.h),
                child: GestureDetector(
                  onTap: () {
                    context.read<SendFavouriteCubit>().sendFavourite(
                      animalId: id,
                    );
                  },
                  child: SvgPicture.asset(
                    ImageAssets.heartIcon,
                    width: 28.w,
                    height: 28.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
