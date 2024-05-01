part of 'home_page_bloc.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

final class HomePageInitial extends HomePageState {}

final class LoadingState extends HomePageState {
  final String? loadingMessage;

  const LoadingState({this.loadingMessage = 'Loading...'});
}

final class FailOnFetchMoviesState extends HomePageState {
  final OnRequisitionFailModel onFailModel;

  const FailOnFetchMoviesState({required this.onFailModel});

  @override
  List<Object> get props => [onFailModel];
}

final class SuccessOnFetchMoviesState extends HomePageState {
  final List<MovieModel> movies;

  const SuccessOnFetchMoviesState({required this.movies});

  @override
  List<Object> get props => [movies];
}
