// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantDetailsModelImpl _$$RestaurantDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantDetailsModelImpl(
      name: json['name'] as String,
      backgroundImage: json['backgroundImage'] as String,
      description: json['description'] as String,
      ratings: (json['ratings'] as num).toDouble(),
      totalReview: json['totalReview'] as String,
      deliveryTime: json['deliveryTime'] as int,
      category: (json['category'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      shareLink: json['shareLink'] as String?,
    );

Map<String, dynamic> _$$RestaurantDetailsModelImplToJson(
        _$RestaurantDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'backgroundImage': instance.backgroundImage,
      'description': instance.description,
      'ratings': instance.ratings,
      'totalReview': instance.totalReview,
      'deliveryTime': instance.deliveryTime,
      'category': instance.category,
      'shareLink': instance.shareLink,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      categoryName: json['categoryName'] as String,
      item: (json['item'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'item': instance.item,
    };
