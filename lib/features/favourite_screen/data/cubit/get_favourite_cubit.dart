import 'package:animal_app/core/networking/repo/app_repo.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_favourite_state.dart';

class GetFavouriteCubit extends Cubit<GetFavouriteState> {
  GetFavouriteCubit(this.appRepo) : super(GetFavouriteInitial());

  final AppRepo appRepo;

  Future<void> getFavouriteAnimals() async {
    emit(GetFavouriteloading());

    final result = await appRepo.getFavoriteAnimal();

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
