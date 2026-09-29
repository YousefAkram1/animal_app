import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/features/details_screen/data/repo/details_repo_imple.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_animal_state.dart';

class GetAnimalCubit extends Cubit<GetAnimalState> {
  DetailsRepoImple detailsRepo;

  GetAnimalCubit(this.detailsRepo) : super(GetAnimalInitial());
  Future<void> getAnimalDetails({required String animalId}) async {
    emit(GetAnimalLoading());
    final result = await detailsRepo.getAnimalDetails(animalId: animalId);
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
