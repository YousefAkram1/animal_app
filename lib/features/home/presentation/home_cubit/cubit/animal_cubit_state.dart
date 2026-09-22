import 'package:equatable/equatable.dart';

import 'package:animal_app/core/utils/models/animal_model.dart';

abstract class AnimalCubitState extends Equatable {
  const AnimalCubitState();

  @override
  List<Object?> get props => [];
}

class AnimalCubitInitial extends AnimalCubitState {}

class AnimalCubitLoading extends AnimalCubitState {}

class AnimalCubitSuccess extends AnimalCubitState {
  final List<AnimalModel> animals;

  const AnimalCubitSuccess({required this.animals});

  @override
  List<Object?> get props => [animals];
}

class AnimalCubitError extends AnimalCubitState {
  final String errorMessage;

  const AnimalCubitError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
