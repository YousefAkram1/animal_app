import 'package:animal_app/core/utils/values/app_strings.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/chips_selected_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            SizedBox(height: 23.h),
          ],
        ),
      ),
    );
  }
}
