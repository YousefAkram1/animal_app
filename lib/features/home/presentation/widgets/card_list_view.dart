import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/features/home/presentation/widgets/card_item.dart';
import 'package:animal_app/features/home/presentation/widgets/card_shimmer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
    required this.animals,
    required this.scrollController,
    required this.isLoadingMore,
  });

  final List<AnimalModel> animals;
  final ScrollController scrollController;
  final bool isLoadingMore;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,

      itemCount: animals.length + (isLoadingMore ? 1 : 0),

      itemBuilder: (context, index) {
        if (index == animals.length) {
          return const CardItemShimmer();
        }

        final animal = animals[index];

        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: CardItem(
            breed: animal.breeds!.first,
            image: animal.url!,
            id: animal.id!,
          ),
        );
      },
    );
  }
}
