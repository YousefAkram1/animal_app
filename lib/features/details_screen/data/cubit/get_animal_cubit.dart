import 'package:animal_app/core/networking/repo/app_repo.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_animal_state.dart';

class GetAnimalCubit extends Cubit<GetAnimalState> {
  AppRepo appRepo;

  GetAnimalCubit(this.appRepo) : super(GetAnimalInitial());
  Future<void> getAnimalDetails({required String animalId}) async {
    emit(GetAnimalLoading());
    final result = await appRepo.getAnimalDetails(animalId: animalId);
    result.fold(
      (failure) {
        emit(GetAnimalError(errorMessage: failure.errorMessage));
      },
      (animalDetails) {
        emit(GetAnimalSuccess(animal: animalDetails));
      },
    );
  }
}
