import 'package:animal_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AnimalModel>>> getAnimals({required int page});

  Future<Either<Failure, dynamic>> addFavouriteAnimal({
    required String animalId,
  });
}
