import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/core/utils/values/assets.dart';
import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/home/data/cubit/send_favourite_cubit.dart';
import 'package:animal_app/features/home/data/cubit/animal_cubit_cubit.dart';
import 'package:animal_app/features/home/data/cubit/animal_cubit_state.dart';
import 'package:animal_app/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/card_list_view.dart';
import 'package:animal_app/features/home/presentation/widgets/card_shimmer.dart';
import 'package:animal_app/features/home/presentation/widgets/chips_selected_widget.dart';
import 'package:animal_app/features/home/presentation/widgets/search_text_field.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SendFavouriteCubit, SendFavouriteState>(
      listener: (context, state) {
        if (state is SendFavouriteSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text('Send Success'),
            ),
          );
        } else if (state is SendFavouriteFail) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),

                AppBarWidget(),

                SizedBox(height: 20.h),

                SearchTextField(),

                SizedBox(height: 20.h),

                Text(LocaleKeys.home_categories.tr(), style: Fontstyle.bold20),

                SizedBox(height: 14.h),

                TabSelectItem(),

                SizedBox(height: 10.h),

                Expanded(
                  child: BlocBuilder<AnimalCubitCubit, AnimalCubitState>(
                    builder: (context, state) {
                      if (state is AnimalCubitLoading) {
                        return ListView.builder(
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return const CardItemShimmer();
                          },
                        );
                      }

                      if (state is AnimalCubitError) {
                        return Center(child: Text(state.errorMessage));
                      }

                      if (state is AnimalCubitSuccess) {
                        return CardListView(
                          animals: state.animals,
                          scrollController: context
                              .read<AnimalCubitCubit>()
                              .scrollController,
                          isLoadingMore: state.isLoadingMore,
                        );
                      }

                      return const SizedBox();
                    },
                  ),
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
                ImageAssets.homeIcon,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                width: 30.w,
                height: 30.h,
                ImageAssets.heartIcon,
                colorFilter: ColorFilter.mode(
                  AppColors.textColor,
                  BlendMode.srcIn,
                ),
              ),
              label: '',
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
      ),
    );
  }
}
