import 'package:e_commerce_app/features/home_screen/data/datasources/local_data_sources/local_resources.dart';
import 'package:e_commerce_app/features/home_screen/domain/usecases/search_restaurant_use_cases.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_screen/data/repositories/restaurant_details_repository_imp.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  // local source
  getIt.registerFactory<RestaurantDetailsLocalSource>(
      RestaurantDetailsLocalSource.new);

  getIt.registerFactory<SearchRestaurantUseCases>(SearchRestaurantUseCases.new);

  getIt.registerFactory<RestaurantDetailsRepositoryImp>(
    () => RestaurantDetailsRepositoryImp(
      detailsLocalSource: getIt.get<RestaurantDetailsLocalSource>(),
    ),
  );
}
