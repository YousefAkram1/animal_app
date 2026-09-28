import 'package:animal_app/core/errors/error_handling.dart';
import 'package:animal_app/core/errors/failure.dart';
import 'package:animal_app/core/networking/base_api.dart';
import 'package:animal_app/core/utils/values/api_paths.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/features/details_screen/data/repo/details_repo.dart';
import 'package:dartz/dartz.dart';

class DetailsRepoImple implements DetailsRepo {
  ApiBase api;
  DetailsRepoImple(this.api);
  @override
  Future<Either<Failure, AnimalModel>> getAnimalDetails({
    required String animalId,
  }) async {
    try {
      final data = await api.get(
        path: ApiPath.getImagePathById(animalId: animalId),
      );

      final animal = AnimalModel.fromJson(data as Map<String, dynamic>);

      return Right(animal);
    } catch (e) {
      return Left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }
}
