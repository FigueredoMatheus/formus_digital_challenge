part of 'home_page_bloc.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

final class HomePageInitial extends HomePageState {}

final class LoadingState extends HomePageState {}

final class FailOnFetchMoviesState extends HomePageState {}

final class SuccessOnFetchMoviesState extends HomePageState {}
