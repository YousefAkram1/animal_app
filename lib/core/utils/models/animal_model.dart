import 'package:equatable/equatable.dart';

import 'breed.dart';

class AnimalModel extends Equatable {
  final String? id;
  final String? url;
  final int? width;
  final int? height;
  final DateTime? createdAt;
  final List<Breed>? breeds;
  final List<dynamic>? categories;
  final List<dynamic>? colours;
  final List<dynamic>? tags;

  const AnimalModel({
    this.id,
    this.url,
    this.width,
    this.height,
    this.createdAt,
    this.breeds,
    this.categories,
    this.colours,
    this.tags,
  });

  factory AnimalModel.fromJson(Map<String, dynamic> json) {
    return AnimalModel(
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => Breed.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: json['categories'] as List<dynamic>?,
      colours: json['colours'] as List<dynamic>?,
      tags: json['tags'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'url': url,
    'width': width,
    'height': height,
    'created_at': createdAt?.toIso8601String(),
    'breeds': breeds?.map((e) => e.toJson()).toList(),
    'categories': categories,
    'colours': colours,
    'tags': tags,
  };

  @override
  List<Object?> get props {
    return [
      id,
      url,
      width,
      height,
      createdAt,
      breeds,
      categories,
      colours,
      tags,
    ];
  }
}
