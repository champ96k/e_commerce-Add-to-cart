import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_details_model.freezed.dart';
part 'restaurant_details_model.g.dart';

@freezed
class RestaurantDetailsModel with _$RestaurantDetailsModel {
  const factory RestaurantDetailsModel({
    required String name,
    required String dscription,

    //change to rating
    required double review,
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
    required List<Item> item,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    String? image,
    required String title,
    required String description,
    required int amount,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
