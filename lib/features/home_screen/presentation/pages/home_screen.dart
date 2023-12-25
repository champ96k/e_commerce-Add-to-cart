import 'package:e_commerce_app/features/cart/presentation/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/components/home_tab_bar_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HomeTabBarBuilder(),
          CartWidget(),
        ],
      ),
    );
  }
}
