part of 'send_favourite_cubit.dart';

sealed class SendFavouriteState extends Equatable {
  const SendFavouriteState();

  @override
  List<Object> get props => [];
}

final class SendFavouriteInitial extends SendFavouriteState {}

final class SendFavouriteLouding extends SendFavouriteState {}

final class SendFavouriteSuccess extends SendFavouriteState {
  final String successMessage;
  const SendFavouriteSuccess({required this.successMessage});
}

final class SendFavouriteFail extends SendFavouriteState {
  final String errorMessage;
  const SendFavouriteFail({required this.errorMessage});
}
