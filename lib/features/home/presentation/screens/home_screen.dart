import 'package:animal_app/core/utils/theme/theme_light.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/card_list_view.dart';
import 'package:animal_app/features/home/presentation/widgets/chips_selected_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/search_text_field.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 74.h),
            AppBarWidget(),
            SizedBox(height: 20.h),
            SearchTextField(),
            SizedBox(height: 20.h),
            Text(
              LocaleKeys.home_categories.tr(),
              style: lightTheme.textTheme.bodyLarge!.copyWith(fontSize: 20.sp),
            ),
            SizedBox(height: 14.h),
            TabSelectItem(),
            CardListView(),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        height: 76.h,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
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
