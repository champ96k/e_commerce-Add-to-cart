part of 'cart_cubit.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    required BuiltList<CartItem> items,
    @Default(0) double totalAmount,
    @Default(0) int totalCartItem,
  }) = _CartState;

  factory CartState.initial() => CartState(items: <CartItem>[].build());
}
