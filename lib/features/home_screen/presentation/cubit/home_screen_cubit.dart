import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/features/home_screen/data/repositories/restaurant_details_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit({required this.repository})
      : super(HomeScreenInitialState()) {
    /// Call the fetch restaurant details when the Cubit is created
    _getRestaurantDetails();
  }

  final RestaurantDetailsRepository repository;

  /// Private list to hold category data
  List<Category> _category = [];

  /// Getter method to access the category list
  List<Category> get category => _category;

  /// fetch restaurant details asynchronously
  Future<void> _getRestaurantDetails() async {
    try {
      /// Emit a loading state to inform the UI that data is being fetched
      emit(HomeScreenLoadingState());

      /// Call the repository method to get restaurant details
      final model = await repository.getRestaurantDetails();

      /// Update the category list with data from the fetched model
      _category = model.category;

      /// Emit a loaded state with the fetched model to update the UI
      emit(HomeScreenLoadedState(model: model));
    } on Exception catch (e) {
      /// Catch any exceptions that may occur during the data fetching process
      /// Emit an error state with a descriptive error message
      emit(HomeScreenErrorState(errorMessage: 'Something went wrong $e'));
    }
  }
}
