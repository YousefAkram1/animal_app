import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/core/networking/repo/app_repo.dart';
import 'animal_cubit_state.dart';

class AnimalCubitCubit extends Cubit<AnimalCubitState> {
  AnimalCubitCubit(this.appRepo) : super(AnimalCubitInitial()) {
    scrollController.addListener(_onScroll);
  }

  final AppRepo appRepo;

  final ScrollController scrollController = ScrollController();

  final List<AnimalModel> animals = [];

  int currentPage = 0;

  bool isLoadingMore = false;

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 300) {
      loadMoreAnimals();
    }
  }

  Future<void> getAnimals() async {
    emit(AnimalCubitLoading());

    currentPage = 0;
    animals.clear();

    final result = await appRepo.getAnimals(page: currentPage);

    result.fold(
      (failure) {
        emit(AnimalCubitError(errorMessage: failure.errorMessage));
      },
      (newAnimals) {
        animals.addAll(newAnimals);

        emit(AnimalCubitSuccess(animals: List.from(animals)));
      },
    );
  }

  Future<void> loadMoreAnimals() async {
    if (isLoadingMore) return;

    isLoadingMore = true;

    final nextPage = currentPage + 1;

    final result = await appRepo.getAnimals(page: nextPage);

    result.fold(
      (failure) {
        isLoadingMore = false;

        emit(AnimalCubitError(errorMessage: failure.errorMessage));
      },
      (newAnimals) {
        currentPage = nextPage;

        animals.addAll(newAnimals);

        isLoadingMore = false;

        emit(AnimalCubitSuccess(animals: List.from(animals)));
      },
    );
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}
