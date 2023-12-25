part of 'cart_cubit.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    required BuiltList<CartItem> items,
    @Default(0) double totalAmount,
    @Default(0) int totalCartItem,
    @Default('') String errorMessage,
  }) = _CartState;

  factory CartState.initial() => CartState(items: <CartItem>[].build());

  factory CartState.error(String errorMessage) =>
      CartState(items: <CartItem>[].build(), errorMessage: errorMessage);
}
