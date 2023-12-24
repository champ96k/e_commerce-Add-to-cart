import 'package:e_commerce_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/components/cart_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartInfoState) {
          return CartFooter(
            itemsLength: state.cartItems?.length ?? 0,
            totalAmount: state.totalAmount ?? 0.0,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
