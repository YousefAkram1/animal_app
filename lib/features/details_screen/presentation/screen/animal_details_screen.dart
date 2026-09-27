import 'package:animal_app/core/utils/values/font_style.dart';
import 'package:animal_app/features/details_screen/data/cubit/get_animal_cubit.dart';
import 'package:animal_app/features/details_screen/presentation/widgets/animal_name_row.dart';
import 'package:animal_app/features/details_screen/presentation/widgets/details_chip.dart';
import 'package:animal_app/features/details_screen/presentation/widgets/image_stack_widget.dart';
import 'package:animal_app/core/widgets/app_button.dart';
import 'package:animal_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimalDetailsScreen extends StatefulWidget {
  const AnimalDetailsScreen({super.key});

  @override
  State<AnimalDetailsScreen> createState() => _AnimalDetailsScreenState();
}

class _AnimalDetailsScreenState extends State<AnimalDetailsScreen> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_isInitialized) return;

    _isInitialized = true;

    final animalId = ModalRoute.of(context)!.settings.arguments as String;

    context.read<GetAnimalCubit>().getAnimalDetails(animalId: animalId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetAnimalCubit, GetAnimalState>(
        builder: (context, state) {
          if (state is GetAnimalLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is GetAnimalError) {
            return Center(child: Text(state.errorMessage));
          }

          if (state is GetAnimalSuccess) {
            final animal = state.animal;

            return SingleChildScrollView(
              child: Column(
                children: [
                  ImageStack(imageUrl: animal.url ?? ''),

                  SizedBox(height: 18.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.5.w),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        AnimalNameRow(
                          name: animal.breeds?.first.name ?? 'Unknown',

                          location: animal.breeds?.first.origin ?? 'Unknown',
                        ),

                        SizedBox(height: 20.h),

                        DetailsChips(
                          age: animal.breeds?.first.lifeSpan ?? 'Unknown',
                        ),

                        SizedBox(height: 21.h),

                        Text(
                          LocaleKeys.details_about.tr(),
                          style: Fontstyle.semiBold22,
                        ),

                        SizedBox(height: 7.h),

                        Text(
                          animal.breeds?.first.description ??
                              'No description available',

                          style: Fontstyle.regular16,
                        ),

                        SizedBox(height: 21.h),

                        AppButton(
                          width: 343.w,
                          height: 54.h,

                          child: Text(
                            LocaleKeys.details_adobtNow.tr(),

                            style: Fontstyle.medium18.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
