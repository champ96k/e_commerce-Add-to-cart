import 'package:e_commerce_app/features/cart/data/models/cart_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInfoState(cartItems: []));

  final List<CartItem> _itemList = [];
  void addToCart(CartItem item) {
    try {
      _itemList.add(item);
      _emitState();
    } on Exception catch (e) {
      emit(CartErrorState(errorMessage: '$e'));
    }
  }

  void removeFromCart(CartItem item) {
    try {
      _itemList.remove(item);
      _emitState();
    } on Exception catch (e) {
      emit(CartErrorState(errorMessage: '$e'));
    }
  }

  void _emitState() {
    final _totalAmount = calculateTotalAmount();
    emit(CartInfoState()
        .copyWith(cartItems: _itemList, totalAmount: _totalAmount));
  }

  double calculateTotalAmount() {
    return _itemList.fold(0, (sum, item) => sum + item.amount);
  }
}
