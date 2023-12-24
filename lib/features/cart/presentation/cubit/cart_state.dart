part of 'cart_cubit.dart';

abstract class CartState extends Equatable {}

class CartInfoState extends CartState {
  final List<CartItem>? cartItems;
  final double? totalAmount;

  CartInfoState({this.cartItems, this.totalAmount});

  CartInfoState copyWith({List<CartItem>? cartItems, double? totalAmount}) {
    return CartInfoState(
      cartItems: cartItems ?? this.cartItems,
      totalAmount: totalAmount ?? this.totalAmount,
    );
  }

  @override
  List<Object?> get props => [cartItems, totalAmount];
}

class CartErrorState extends CartState {
  final String errorMessage;

  CartErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
