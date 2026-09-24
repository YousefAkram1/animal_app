import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
          selectedIcon: SvgPicture.asset(
            width: 30.w,
            height: 30.h,
            ImageAssets.homeIcon,
          ),
          label: '',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            width: 30.w,
            height: 30.h,
            ImageAssets.disableHeart,
          ),
          label: "",
          selectedIcon: SvgPicture.asset(
            width: 30.w,
            height: 30.h,
            ImageAssets.fullHeartIcon,
          ),
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
    );
  }
}
