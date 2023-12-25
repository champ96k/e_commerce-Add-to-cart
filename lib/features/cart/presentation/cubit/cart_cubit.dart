import 'package:built_collection/built_collection.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  void addToCart(CartItem item) {
    try {
      final index =
          state.items.indexWhere((i) => i.productId == item.productId);
      final items = state.items.rebuild((builder) {
        if (index != -1) {
          builder[index] =
              builder[index].copyWith(quantity: builder[index].quantity + 1);
        } else {
          builder.add(item.copyWith(quantity: 1));
        }
      });
      _emitState(items);
    } on Exception catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> removeCartItem(CartItem item) async {
    try {
      final index =
          state.items.indexWhere((i) => i.productId == item.productId);
      final items = state.items.rebuild((builder) {
        if (index != -1) {
          if (builder[index].quantity > 1) {
            builder[index] =
                builder[index].copyWith(quantity: builder[index].quantity - 1);
          } else {
            builder.removeAt(index);
          }
        }
      });
      _emitState(items);
    } on Exception catch (e) {
      debugPrint("Error: $e");
    }
  }

  void _emitState(BuiltList<CartItem> items) {
    emit(state.copyWith(
      items: items,
      totalAmount: calculateTotalAmount(items),
      totalCartItem: _calculatetotalCartItem(items),
    ));
  }

  int _calculatetotalCartItem(BuiltList<CartItem> items) {
    int totalQuantity = 0;
    for (final item in items) {
      totalQuantity += item.quantity;
    }
    return totalQuantity;
  }

  double calculateTotalAmount(BuiltList<CartItem> items) {
    return items.fold(0, (sum, item) => sum + (item.amount * item.quantity));
  }
}
