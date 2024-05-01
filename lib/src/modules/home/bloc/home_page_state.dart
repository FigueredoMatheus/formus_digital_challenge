part of 'home_page_bloc.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

final class HomePageInitial extends HomePageState {}

final class LoadingState extends HomePageState {}

final class FailOnFetchMoviesState extends HomePageState {
  final String errorMessage;

  const FailOnFetchMoviesState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

final class SuccessOnFetchMoviesState extends HomePageState {
  final List<MovieModel> movies;

  const SuccessOnFetchMoviesState({required this.movies});

  @override
  List<Object> get props => [movies];
}
