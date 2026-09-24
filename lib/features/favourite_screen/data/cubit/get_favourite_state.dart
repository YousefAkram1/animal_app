part of 'get_favourite_cubit.dart';

sealed class GetFavouriteState extends Equatable {
  const GetFavouriteState();

  @override
  List<Object> get props => [];
}

final class GetFavouriteInitial extends GetFavouriteState {}

final class GetFavouriteloading extends GetFavouriteState {}

final class GetFavouriteSuccess extends GetFavouriteState {
  final List<AnimalModel> favouriteAnimal;
  const GetFavouriteSuccess({required this.favouriteAnimal});
}

final class GetFavouriteFail extends GetFavouriteState {
  final String errorMessage;
  const GetFavouriteFail({required this.errorMessage});
}
