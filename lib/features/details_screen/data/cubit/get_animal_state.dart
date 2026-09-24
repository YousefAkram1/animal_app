part of 'get_animal_cubit.dart';

sealed class GetAnimalState extends Equatable {
  const GetAnimalState();

  @override
  List<Object> get props => [];
}

final class GetAnimalInitial extends GetAnimalState {}

final class GetAnimalLoading extends GetAnimalState {}

final class GetAnimalSuccess extends GetAnimalState {
  final AnimalModel animal;
  const GetAnimalSuccess({required this.animal});
}

final class GetAnimalError extends GetAnimalState {
  final String errorMessage;
  const GetAnimalError({required this.errorMessage});
}
