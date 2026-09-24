import 'package:animal_app/core/errors/error_handling.dart';
import 'package:animal_app/core/errors/failure.dart';
import 'package:animal_app/core/networking/base_api.dart';
import 'package:dartz/dartz.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';
import 'app_repo.dart';

class AppRepoImple implements AppRepo {
  final Api api = Api();

  @override
  Future<Either<Failure, List<AnimalModel>>> getAnimals({
    required int page,
  }) async {
    try {
      final data = await api.get(path: 'images/search', page: page);

      final animals = (data as List)
          .map((animal) => AnimalModel.fromJson(animal as Map<String, dynamic>))
          .toList();

      return Right(animals);
    } catch (e) {
      return Left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, AnimalModel>> getAnimalDetails({
    required String animalId,
  }) async {
    try {
      final data = await api.getById(path: 'images/$animalId');

      final animal = AnimalModel.fromJson(data as Map<String, dynamic>);

      return Right(animal);
    } catch (e) {
      return Left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, dynamic>> postFavouriteAnimal({
    required String animalId,
  }) async {
    try {
      final response = await api.postData(
        path: "v1/favourites",
        animalId: animalId,
      );
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, List<AnimalModel>>> getFavoriteAnimal() async {
    {
      try {
        final data = await api.get(path: "v1/favourites");

        final animals = (data as List)
            .map(
              (animal) => AnimalModel.fromJson(animal as Map<String, dynamic>),
            )
            .toList();

        return Right(animals);
      } catch (e) {
        return Left(
          ServerFailure(errorMessage: ErrorHandling.handle(e).message),
        );
      }
    }
  }
}
