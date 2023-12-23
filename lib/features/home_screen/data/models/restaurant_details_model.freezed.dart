// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDetailsModel _$RestaurantDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _RestaurantDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDetailsModel {
  String get name => throw _privateConstructorUsedError;
  String get dscription => throw _privateConstructorUsedError;
  double get review => throw _privateConstructorUsedError;
  String get totalReview => throw _privateConstructorUsedError;
  int get deliveryTime => throw _privateConstructorUsedError;
  List<Category> get category => throw _privateConstructorUsedError;
  String? get shareLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDetailsModelCopyWith<RestaurantDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDetailsModelCopyWith<$Res> {
  factory $RestaurantDetailsModelCopyWith(RestaurantDetailsModel value,
          $Res Function(RestaurantDetailsModel) then) =
      _$RestaurantDetailsModelCopyWithImpl<$Res, RestaurantDetailsModel>;
  @useResult
  $Res call(
      {String name,
      String dscription,
      double review,
      String totalReview,
      int deliveryTime,
      List<Category> category,
      String? shareLink});
}

/// @nodoc
class _$RestaurantDetailsModelCopyWithImpl<$Res,
        $Val extends RestaurantDetailsModel>
    implements $RestaurantDetailsModelCopyWith<$Res> {
  _$RestaurantDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dscription = null,
    Object? review = null,
    Object? totalReview = null,
    Object? deliveryTime = null,
    Object? category = null,
    Object? shareLink = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dscription: null == dscription
          ? _value.dscription
          : dscription // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as double,
      totalReview: null == totalReview
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      shareLink: freezed == shareLink
          ? _value.shareLink
          : shareLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantDetailsModelImplCopyWith<$Res>
    implements $RestaurantDetailsModelCopyWith<$Res> {
  factory _$$RestaurantDetailsModelImplCopyWith(
          _$RestaurantDetailsModelImpl value,
          $Res Function(_$RestaurantDetailsModelImpl) then) =
      __$$RestaurantDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String dscription,
      double review,
      String totalReview,
      int deliveryTime,
      List<Category> category,
      String? shareLink});
}

/// @nodoc
class __$$RestaurantDetailsModelImplCopyWithImpl<$Res>
    extends _$RestaurantDetailsModelCopyWithImpl<$Res,
        _$RestaurantDetailsModelImpl>
    implements _$$RestaurantDetailsModelImplCopyWith<$Res> {
  __$$RestaurantDetailsModelImplCopyWithImpl(
      _$RestaurantDetailsModelImpl _value,
      $Res Function(_$RestaurantDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dscription = null,
    Object? review = null,
    Object? totalReview = null,
    Object? deliveryTime = null,
    Object? category = null,
    Object? shareLink = freezed,
  }) {
    return _then(_$RestaurantDetailsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dscription: null == dscription
          ? _value.dscription
          : dscription // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as double,
      totalReview: null == totalReview
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      shareLink: freezed == shareLink
          ? _value.shareLink
          : shareLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantDetailsModelImpl implements _RestaurantDetailsModel {
  const _$RestaurantDetailsModelImpl(
      {required this.name,
      required this.dscription,
      required this.review,
      required this.totalReview,
      required this.deliveryTime,
      required final List<Category> category,
      this.shareLink})
      : _category = category;

  factory _$RestaurantDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantDetailsModelImplFromJson(json);

  @override
  final String name;
  @override
  final String dscription;
  @override
  final double review;
  @override
  final String totalReview;
  @override
  final int deliveryTime;
  final List<Category> _category;
  @override
  List<Category> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final String? shareLink;

  @override
  String toString() {
    return 'RestaurantDetailsModel(name: $name, dscription: $dscription, review: $review, totalReview: $totalReview, deliveryTime: $deliveryTime, category: $category, shareLink: $shareLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dscription, dscription) ||
                other.dscription == dscription) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.totalReview, totalReview) ||
                other.totalReview == totalReview) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.shareLink, shareLink) ||
                other.shareLink == shareLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      dscription,
      review,
      totalReview,
      deliveryTime,
      const DeepCollectionEquality().hash(_category),
      shareLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantDetailsModelImplCopyWith<_$RestaurantDetailsModelImpl>
      get copyWith => __$$RestaurantDetailsModelImplCopyWithImpl<
          _$RestaurantDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _RestaurantDetailsModel implements RestaurantDetailsModel {
  const factory _RestaurantDetailsModel(
      {required final String name,
      required final String dscription,
      required final double review,
      required final String totalReview,
      required final int deliveryTime,
      required final List<Category> category,
      final String? shareLink}) = _$RestaurantDetailsModelImpl;

  factory _RestaurantDetailsModel.fromJson(Map<String, dynamic> json) =
      _$RestaurantDetailsModelImpl.fromJson;

  @override
  String get name;
  @override
  String get dscription;
  @override
  double get review;
  @override
  String get totalReview;
  @override
  int get deliveryTime;
  @override
  List<Category> get category;
  @override
  String? get shareLink;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantDetailsModelImplCopyWith<_$RestaurantDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get categoryName => throw _privateConstructorUsedError;
  List<Item> get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String categoryName, List<Item> item});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, List<Item> item});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? item = null,
  }) {
    return _then(_$CategoryImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.categoryName, required final List<Item> item})
      : _item = item;

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String categoryName;
  final List<Item> _item;
  @override
  List<Item> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString() {
    return 'Category(categoryName: $categoryName, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryName, const DeepCollectionEquality().hash(_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String categoryName,
      required final List<Item> item}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get categoryName;
  @override
  List<Item> get item;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String? image, String title, String description, int amount});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? title = null,
    Object? description = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String title, String description, int amount});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? title = null,
    Object? description = null,
    Object? amount = null,
  }) {
    return _then(_$ItemImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {this.image,
      required this.title,
      required this.description,
      required this.amount});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String? image;
  @override
  final String title;
  @override
  final String description;
  @override
  final int amount;

  @override
  String toString() {
    return 'Item(image: $image, title: $title, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, title, description, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final String? image,
      required final String title,
      required final String description,
      required final int amount}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String? get image;
  @override
  String get title;
  @override
  String get description;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
