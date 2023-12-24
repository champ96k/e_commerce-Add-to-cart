// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      title: json['title'] as String,
      amount: json['amount'] as num,
      image: json['image'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'image': instance.image,
      'description': instance.description,
      'quantity': instance.quantity,
    };
