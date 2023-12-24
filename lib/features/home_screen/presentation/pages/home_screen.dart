import 'package:e_commerce_app/core/app_configs/screen_names.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_widget.dart';
import 'package:e_commerce_app/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:e_commerce_app/src/widget/primary_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/components/home_tab_bar_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        actions: [
          PrimaryIconButton(
              icon: Icons.search,
              onTap: () {
                final category = context.read<HomeScreenCubit>().category;
                if (category.isNotEmpty) {
                  Navigator.of(context).pushNamed(
                    ScreenNames.searchScreen,
                    arguments: {'category': category},
                  );
                }
              }),
          const SizedBox(width: 16.0),
          const PrimaryIconButton(icon: Icons.share),
          const SizedBox(width: 16.0),
        ],
      ),
      body: Stack(
        children: [
          const HomeTabBarBuilder(),
          CartWidget(),
        ],
      ),
    );
  }
}
