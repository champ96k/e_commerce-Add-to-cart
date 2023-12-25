import 'package:built_collection/built_collection.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

/// Define a Cubit class for managing the cart state
class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  /// Method to add an item to the cart
  void addToCart(CartItem item) {
    try {
      /// Find the index of the item in the cart
      final index =
          state.items.indexWhere((i) => i.productId == item.productId);

      /// Update the cart items based on whether the item
      /// is already in the cart or not
      final items = state.items.rebuild((builder) {
        if (index != -1) {
          builder[index] =
              builder[index].copyWith(quantity: builder[index].quantity + 1);
        } else {
          builder.add(item.copyWith(quantity: 1));
        }
      });

      /// Emit the updated cart state
      _emitState(items);
    } on Exception catch (e) {
      /// Handle exceptions and print an error message
      emit(CartState.error('Error: $e'));
    }
  }

  /// Asynchronous method to remove an item from the cart
  Future<void> removeCartItem(CartItem item) async {
    try {
      /// Find the index of the item in the cart
      final index =
          state.items.indexWhere((i) => i.productId == item.productId);

      /// Update the cart items based on the item quantity
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

      /// Emit the updated cart state
      _emitState(items);
    } on Exception catch (e) {
      /// Handle exceptions and print an error message
      emit(CartState.error('Error: $e'));
    }
  }

  // emit a new cart state with updated items
  void _emitState(BuiltList<CartItem> items) {
    emit(state.copyWith(
      items: items,
      totalAmount: calculateTotalAmount(items),
      totalCartItem: _calculateTotalCartItem(items),
    ));
  }

  /// Private method to calculate the total quantity of items in the cart
  int _calculateTotalCartItem(BuiltList<CartItem> items) {
    int totalQuantity = 0;
    for (final item in items) {
      totalQuantity += item.quantity;
    }
    return totalQuantity;
  }

  /// Method to calculate the total amount of items in the cart
  double calculateTotalAmount(BuiltList<CartItem> items) {
    return items.fold(0, (sum, item) => sum + (item.amount * item.quantity));
  }
}
