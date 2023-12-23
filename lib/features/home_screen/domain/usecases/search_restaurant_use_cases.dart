import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';

class SearchRestaurantUseCases {
  /// Asynchronous function to search for items based on a search query
  ///  within a list of categories
  Future<List<Item>> getSearchItem(
      List<Category> category, String searchQuery) async {
    /// Initialize an empty list to store the search results
    final _result = <Item>[];

    /// Iterate through each category in the provided list
    for (final e in category) {
      /// Check if the category name contains the search
      /// query (case-insensitive)
      if (e.categoryName.toLowerCase().contains(searchQuery)) {
        /// If the category name matches, add all items from the
        /// category to the result list
        _result.addAll(e.item);
      } else {
        /// If the category name doesn't match, filter
        /// items within the category based on the search query
        // and add the filtered items to the result list
        final currentResult = e.item
            .where((item) => item.title.toLowerCase().contains(searchQuery))
            .toList();
        _result.addAll(currentResult);
      }
    }

    /// Return the final list of search results
    return _result;
  }
}
