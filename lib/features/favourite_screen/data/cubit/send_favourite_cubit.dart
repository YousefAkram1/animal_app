import 'package:animal_app/core/networking/repo/app_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'send_favourite_state.dart';

class SendFavouriteCubit extends Cubit<SendFavouriteState> {
  SendFavouriteCubit(this.appRepo) : super(SendFavouriteInitial());
  AppRepo appRepo;

  Future<void> sendFavourite({required String animalId}) async {
    final result = await appRepo.postFavouriteAnimal(animalId: animalId);

    result.fold(
      (fail) {
        emit(SendFavouriteFail(errorMessage: fail.errorMessage));
      },
      (success) {
        SendFavouriteSuccess(successMessage: success.toString());
      },
    );
  }
}
