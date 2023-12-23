part of 'home_screen_cubit.dart';

abstract class HomeScreenState extends Equatable {}

class HomeScreenInitialState extends HomeScreenState {
  @override
  List<Object?> get props => ['HomeScreenInitial'];
}

class HomeScreenLoadingState extends HomeScreenState {
  final String message;
  HomeScreenLoadingState({this.message = 'Loading...'});

  @override
  List<Object?> get props => [message];
}

class HomeScreenLoadedState extends HomeScreenState {
  final RestaurantDetailsModel model;
  HomeScreenLoadedState({required this.model});

  @override
  List<Object?> get props => [model];
}

class HomeScreenErrorState extends HomeScreenState {
  final String errorMessage;
  HomeScreenErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
