import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/features/home/data/home_cubit/cubit/animal_cubit_cubit.dart';
import 'package:animal_app/features/home/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardListView extends StatefulWidget {
  const CardListView({super.key, required this.animals});

  final List<AnimalModel> animals;

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();

    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      context.read<AnimalCubitCubit>().loadMoreAnimals();
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.animals.length,
        itemBuilder: (context, index) {
          return CardItem(animalModel: widget.animals[index]);
        },
      ),
    );
  }
}
