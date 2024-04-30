import 'package:dio/dio.dart';
import 'package:formus_digital_challenge/flavors/flavors.dart';
import 'package:formus_digital_challenge/src/repositories/movies_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => MoviesRepository(Dio(BaseOptions(
        baseUrl: FlavorsSettings.baseUrl,
      ))));
}
