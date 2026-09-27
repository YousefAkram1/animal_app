import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/favourite_screen/data/cubit/get_favourite_cubit.dart';
import 'package:animal_app/features/favourite_screen/presentation/widgets/favourite_card.dart';
import 'package:animal_app/features/favourite_screen/presentation/widgets/favourite_card_shimmer.dart';
import 'package:animal_app/features/home/presentation/widgets/chips_selected_widget.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 19.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Text(
                LocaleKeys.favourite_favouriteTitle.tr(),
                style: Fontstyle.bold24,
              ),
              SizedBox(height: 20.h),
              TabSelectItem(),
              BlocBuilder<GetFavouriteCubit, GetFavouriteState>(
                builder: (context, state) {
                  if (state is GetFavouriteSuccess) {
                    return Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 19.w,
                          childAspectRatio: 0.72,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return FavouriteCard();
                        },
                      ),
                    );
                  } else if (state is GetFavouriteFail) {
                    return Expanded(
                      child: Center(child: Text(state.errorMessage)),
                    );
                  } else {
                    return Expanded(
                      child: GridView.builder(
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.65,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                        ),
                        itemBuilder: (context, index) {
                          return const FavouriteCardShimmer();
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          if (value == 1) {
            Navigator.pushNamed(context, AppRouts.favoriteSceen);
          } else if (value == 0) {
            Navigator.pushNamed(context, AppRouts.homeSceen);
          } else if (value == 2) {
            // Handle messages navigation
          } else if (value == 3) {
            // Handle profile navigation
          }
        },
        height: 76.h,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              width: 30.w,
              height: 30.h,
              ImageAssets.homeUnselectedIcon,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              width: 30.w,
              height: 30.h,
              ImageAssets.fullHeartIcon,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              width: 30.w,
              height: 30.h,
              ImageAssets.messagesIcon,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              width: 30.w,
              height: 30.h,
              ImageAssets.profileIcon,
            ),
            label: '',
          ),
        ],

        elevation: 4,
      ),
    );
  }
}
