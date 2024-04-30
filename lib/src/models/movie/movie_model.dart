import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  final int rank;
  final String title;
  final String description;
  final String imdbid;
  final String rating;
  final String image;
  @JsonKey(name: 'genre')
  final List<String>? genres;
  @JsonKey(name: 'year')
  final int releaseYear;

  MovieModel({
    required this.imdbid,
    required this.rank,
    required this.title,
    required this.description,
    required this.genres,
    required this.image,
    required this.releaseYear,
    required this.rating,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
