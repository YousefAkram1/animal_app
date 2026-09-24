import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/details_screen/presentation/widgets/animal_name_row.dart';
import 'package:animal_app/features/favourite_screen/presentation/widgets/favourite_card.dart';
import 'package:animal_app/features/home/presentation/widgets/chips_selected_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 19.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 74.h),
            Text("Your Favorite Pets", style: Fontstyle.bold24),
            SizedBox(height: 20.h),
            TabSelectItem(),
            Expanded(
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
            ),
          ],
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
