// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      imdbid: json['imdbid'] as String,
      rank: (json['rank'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      genres:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      image: json['image'] as String,
      releaseYear: (json['year'] as num).toInt(),
      rating: json['rating'] as String,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'title': instance.title,
      'description': instance.description,
      'imdbid': instance.imdbid,
      'rating': instance.rating,
      'image': instance.image,
      'genre': instance.genres,
      'year': instance.releaseYear,
    };
