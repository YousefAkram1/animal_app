import 'package:animal_app/core/errors/error_handling.dart';
import 'package:animal_app/core/errors/failure.dart';
import 'package:animal_app/core/networking/base_api.dart';
import 'package:animal_app/core/utils/values/api_paths.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:animal_app/features/favourite_screen/data/repo/favourite_repo.dart';
import 'package:dartz/dartz.dart';

class FavouriteRepoImple implements FavouriteRepo {
  ApiBase api;
  FavouriteRepoImple(this.api);
  @override
  Future<Either<Failure, List<AnimalModel>>> getFavoriteAnimal() async {
    {
      try {
        final data = await api.get(path: ApiPath.favouritePath);

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
