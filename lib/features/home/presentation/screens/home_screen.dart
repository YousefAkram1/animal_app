import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/card_list_view.dart';
import 'package:animal_app/features/home/presentation/widgets/chips_selected_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/search_text_field.dart';
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
            Text(AppStrings.categories, style: Fontstyle.bold20),
            SizedBox(height: 14.h),
            TabSelectItem(),
            CardListView(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.iconTextFieldColor,
        elevation: 4,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.homeIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.disableHeart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.messagesIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.profileIcon),
            label: '',
          ),
        ],
      ),
    );
  }
}
