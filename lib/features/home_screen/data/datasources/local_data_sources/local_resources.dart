import 'dart:convert';

import 'package:e_commerce_app/core/constants/constants.dart';
import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:flutter/services.dart';

class RestaurantDetailsLocalSource {
  /// Asynchronous function to fetch restaurant details
  Future<RestaurantDetailsModel> getRestaurantDetails() async {
    /// Load the JSON data from the restaurant details file using rootBundle
    Map<String, dynamic> json = jsonDecode(
        await rootBundle.loadString(Constants.restaurantDetailsFile));

    /// Parse the JSON data into a RestaurantDetailsModel using the model's
    /// 'fromJson' factory method
    return await RestaurantDetailsModel.fromJson(json);
  }
}
