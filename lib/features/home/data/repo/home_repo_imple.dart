import 'package:animal_app/core/errors/error_handling.dart';
import 'package:animal_app/core/errors/failure.dart';
import 'package:animal_app/core/networking/base_api.dart';
import 'package:animal_app/core/utils/values/api_paths.dart';
import 'package:animal_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';

class HomeRepoImple implements HomeRepo {
  final ApiBase api;
  HomeRepoImple(this.api);

  Map<String, dynamic> queryParameters({int? page}) {
    return {
      'size': 'med',
      'mime_types': 'jpg',
      'format': 'json',
      'has_breeds': true,
      'order': 'RANDOM',
      'page': page,
      'limit': 10,
    };
  }

  Map<String, dynamic> body({required String animalId}) {
    return {"image_id": animalId};
  }

  @override
  Future<Either<Failure, List<AnimalModel>>> getAnimals({
    required int page,
  }) async {
    try {
      final data = await api.get(
        path: ApiPath.search,
        queryParameters: queryParameters(page: page),
      );

      final animals = (data as List)
          .map((animal) => AnimalModel.fromJson(animal as Map<String, dynamic>))
          .toList();

      return Right(animals);
    } catch (e) {
      return Left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, dynamic>> addFavouriteAnimal({
    required String animalId,
  }) async {
    try {
      final response = await api.post(
        path: ApiPath.favouritePath,
        data: body(animalId: animalId),
      );
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }
}
