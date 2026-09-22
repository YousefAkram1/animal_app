import 'package:equatable/equatable.dart';

class Breed extends Equatable {
  final String? id;
  final String? name;
  final String? speciesId;
  final String? lifeSpan;
  final String? temperament;
  final String? origin;
  final String? countryCode;
  final String? description;
  final dynamic bredFor;
  final dynamic perfectFor;
  final String? breedGroup;
  final String? history;
  final dynamic altNames;
  final dynamic wikipediaUrl;
  final String? referenceImageId;

  const Breed({
    this.id,
    this.name,
    this.speciesId,
    this.lifeSpan,
    this.temperament,
    this.origin,
    this.countryCode,
    this.description,
    this.bredFor,
    this.perfectFor,
    this.breedGroup,
    this.history,
    this.altNames,
    this.wikipediaUrl,
    this.referenceImageId,
  });

  factory Breed.fromJson(Map<String, dynamic> json) {
    print('BREED JSON: $json');
    return Breed(
      id: json['id'] as String?,
      name: json['name'] as String?,
      speciesId: json['species_id'] as String?,
      lifeSpan: json['life_span'] as String?,
      temperament: json['temperament'] as String?,
      origin: json['origin'] as String?,
      countryCode: json['country_code'] as String?,
      description: json['description'] as String?,
      bredFor: json['bred_for'] as dynamic,
      perfectFor: json['perfect_for'] as dynamic,
      breedGroup: json['breed_group'] as String?,
      history: json['history'] as String?,
      altNames: json['alt_names'] as dynamic,
      wikipediaUrl: json['wikipedia_url'] as dynamic,
      referenceImageId: json['reference_image_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'species_id': speciesId,
    'life_span': lifeSpan,
    'temperament': temperament,
    'origin': origin,
    'country_code': countryCode,
    'description': description,
    'bred_for': bredFor,
    'perfect_for': perfectFor,
    'breed_group': breedGroup,
    'history': history,
    'alt_names': altNames,
    'wikipedia_url': wikipediaUrl,
    'reference_image_id': referenceImageId,
  };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      speciesId,
      lifeSpan,
      temperament,
      origin,
      countryCode,
      description,
      bredFor,
      perfectFor,
      breedGroup,
      history,
      altNames,
      wikipediaUrl,
      referenceImageId,
    ];
  }
}
