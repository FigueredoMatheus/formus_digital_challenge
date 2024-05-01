import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:formus_digital_challenge/src/core/services/get_it.dart';
import 'package:formus_digital_challenge/src/models/movie/movie_model.dart';
import 'package:formus_digital_challenge/src/models/on_requisition_fail_model.dart';
import 'package:formus_digital_challenge/src/repositories/movies_repository.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    on<FetchMoviesEvent>(_onFetchMoviesEvent);
  }

  _onFetchMoviesEvent(
    FetchMoviesEvent event,
    Emitter<HomePageState> emit,
  ) async {
    emit(const LoadingState());

    try {
      final response = await getIt<MoviesRepository>().fetchTopMovies();

      emit(SuccessOnFetchMoviesState(movies: response));
    } on DioException catch (e) {
      final onFailModel = OnRequisitionFailModel(
        code: e.response?.statusCode,
        message: e.response?.data,
      );

      emit(FailOnFetchMoviesState(onFailModel: onFailModel));
    }
  }
}
