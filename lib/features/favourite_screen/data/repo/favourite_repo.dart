import 'package:animal_app/core/errors/failure.dart';
import 'package:animal_app/core/utils/models/animal_model.dart';
import 'package:dartz/dartz.dart';

abstract class FavouriteRepo {
  Future<Either<Failure, List<AnimalModel>>> getFavoriteAnimal();
}
