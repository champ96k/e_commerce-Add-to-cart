import 'package:e_commerce_app/features/cart/data/models/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_details_model.freezed.dart';
part 'restaurant_details_model.g.dart';

@freezed
class RestaurantDetailsModel with _$RestaurantDetailsModel {
  const factory RestaurantDetailsModel({
    required String name,
    required String description,
    required double ratings,
    required String totalReview,
    required int deliveryTime,
    required List<Category> category,
    String? shareLink,
  }) = _RestaurantDetailsModel;

  factory RestaurantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailsModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String categoryName,
    required List<CartItem> item,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
