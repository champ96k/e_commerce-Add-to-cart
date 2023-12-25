import 'package:e_commerce_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/components/cart_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/commen_extensions.dart';

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        if (state.errorMessage.isNotEmpty) {
          state.errorMessage.showSnackBar(context);
        }
      },
      builder: (context, state) {
        if (state.totalCartItem <= 0) {
          return const SizedBox();
        } else {
          return CartFooter(
            itemsLength: state.totalCartItem,
            totalAmount: state.totalAmount,
          );
        }
      },
    );
  }
}
