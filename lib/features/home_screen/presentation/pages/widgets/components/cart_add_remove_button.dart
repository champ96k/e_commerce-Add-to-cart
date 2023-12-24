import 'package:e_commerce_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:e_commerce_app/src/widget/primary_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cart/data/models/cart_item.dart';

class CartAddRemoveButton extends StatelessWidget {
  const CartAddRemoveButton({super.key, required this.item});

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    final _cubit = context.read<CartCubit>();
    final size = MediaQuery.of(context).size;
    return BlocProvider.value(
      value: _cubit,
      child: Row(
        children: [
          PrimaryIconButton(
            icon: Icons.remove,
            color: const Color(0xff11B546),
            onTap: () => _cubit.removeFromCart(item),
          ),
          SizedBox(width: size.width * 0.03),
          Text(
            "${item.quantity}",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.28,
            ),
          ),
          SizedBox(width: size.width * 0.03),
          PrimaryIconButton(
            icon: Icons.add,
            color: const Color(0xff11B546),
            onTap: () => _cubit.addToCart(item),
          ),
        ],
      ),
    );
  }
}
