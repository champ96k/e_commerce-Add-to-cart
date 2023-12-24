import 'package:e_commerce_app/features/cart/data/models/cart_item.dart';
import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/features/home_screen/domain/usecases/search_restaurant_use_cases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

/// Cubit responsible for managing the state of the search feature
class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.category, required this.useCases})
      : super(SearchFilterState(category: category));

  /// List of categories to be used for searching
  final List<Category> category;

  final SearchRestaurantUseCases useCases;

  /// TextEditingController for handling the input text field
  final TextEditingController textEditingController = TextEditingController();

  /// Asynchronous method to search for restaurant items based on a search query
  Future<void> searchRestaurantItem(String searchQuery) async {
    try {
      /// Check if the search query is empty
      if (searchQuery.isEmpty) {
        /// If empty, emit an empty state to clear the search results
        _emitState([]);
      } else {
        /// Emit a loading state to indicate that the search is in progress
        emit(SearchFilterLoadingState());

        /// Check if the text in the TextEditingController
        /// is different from the current search query
        if (textEditingController.text != searchQuery) {
          /// If different, update the text in the TextEditingController
          textEditingController.text = searchQuery;
        }

        /// Use the SearchRestaurantUseCases to get the
        /// search results based on the query
        final _searchItem = await useCases.getSearchItem(category, searchQuery);

        /// Emit the state with the obtained search results
        _emitState(_searchItem);
      }
    } on Exception catch (e) {
      // Catch any exceptions that may occur during the search process
      // Emit an error state with a descriptive error message
      emit(SearchFilterErrorState(errorMessage: '$e'));
    }
  }

  //To emit a new state based on the search results
  void _emitState(List<CartItem> searchItem) {
    emit(
      SearchFilterState(
        searchItem: searchItem,
        category: category,
        message: searchItem.isEmpty ? 'No result found!' : '',
      ),
    );
  }
}
