// ignore_for_file: one_member_abstracts

import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';

abstract class RestaurantDetailsRepository {
  // Implementation of the abstract method to get restaurant details
  Future<RestaurantDetailsModel> getRestaurantDetails();
}
