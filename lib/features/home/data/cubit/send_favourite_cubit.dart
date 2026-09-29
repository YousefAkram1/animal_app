import 'package:animal_app/features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'send_favourite_state.dart';

class SendFavouriteCubit extends Cubit<SendFavouriteState> {
  SendFavouriteCubit(this.homeRepo) : super(SendFavouriteInitial());
  HomeRepo homeRepo;

  Future<void> sendFavourite({required String animalId}) async {
    final result = await homeRepo.addFavouriteAnimal(animalId: animalId);

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
