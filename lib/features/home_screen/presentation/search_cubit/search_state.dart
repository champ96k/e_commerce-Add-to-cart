part of 'search_cubit.dart';

abstract class SearchState extends Equatable {}

class SearchFilterState extends SearchState {
  final List<Item> searchItem;
  final List<Category> category;
  final String message;

  SearchFilterState({
    this.searchItem = const [],
    this.category = const [],
    this.message = '',
  });

  @override
  List<Object?> get props => [searchItem];
}

class SearchFilterLoadingState extends SearchState {
  final String message;
  SearchFilterLoadingState({this.message = 'Fetching result...'});

  @override
  List<Object?> get props => [message];
}

class SearchFilterErrorState extends SearchFilterState {
  final String errorMessage;
  SearchFilterErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
