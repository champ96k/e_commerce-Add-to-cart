import 'package:e_commerce_app/features/home_screen/data/datasources/local_data_sources/local_resources.dart';
import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/features/home_screen/data/repositories/restaurant_details_repository.dart';

class RestaurantDetailsRepositoryImp extends RestaurantDetailsRepository {
  final RestaurantDetailsLocalSource detailsLocalSource;

  RestaurantDetailsRepositoryImp({required this.detailsLocalSource});

  @override
  Future<RestaurantDetailsModel> getRestaurantDetails() async {
    /// fetching restaurant details to the local data source
    return await detailsLocalSource.getRestaurantDetails();
  }
}
