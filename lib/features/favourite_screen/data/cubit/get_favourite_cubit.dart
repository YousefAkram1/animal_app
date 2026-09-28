import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/features/favourite_screen/data/repo/favourite_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_favourite_state.dart';

class GetFavouriteCubit extends Cubit<GetFavouriteState> {
  GetFavouriteCubit(this.favouriteRepo) : super(GetFavouriteInitial());

  final FavouriteRepo favouriteRepo;

  Future<void> getFavouriteAnimals() async {
    emit(GetFavouriteloading());

    final result = await favouriteRepo.getFavoriteAnimal();

    result.fold(
      (fail) {
        emit(GetFavouriteFail(errorMessage: fail.errorMessage));
      },
      (success) {
        emit(GetFavouriteSuccess(favouriteAnimal: success));
      },
    );
  }
}
