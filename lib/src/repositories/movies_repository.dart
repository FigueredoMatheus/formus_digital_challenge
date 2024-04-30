import 'package:dio/dio.dart' hide Headers;
import 'package:formus_digital_challenge/src/models/movie/movie_model.dart';

import 'package:retrofit/retrofit.dart';

part 'movies_repository.g.dart';

@RestApi(baseUrl: '')
abstract class MoviesRepository {
  factory MoviesRepository(Dio dio, {String baseUrl}) = _MoviesRepository;

  @GET('https://imdb-top-100-movies.p.rapidapi.com/')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
    'X-RapidAPI-Key': '1846f923a4msh6a19ae8b4b6900dp19814fjsn03dd57fcfd1e',
    'X-RapidAPI-Host': 'imdb-top-100-movies.p.rapidapi.com',
  })
  Future<List<MovieModel>> fetchTopMovies();
}
