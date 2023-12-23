import 'package:e_commerce_app/core/app_configs/screen_names.dart';
import 'package:e_commerce_app/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_header/restaurants_header.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_list.dart';
import 'package:e_commerce_app/src/widget/primary_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          if (state is HomeScreenLoadingState) {
            return const CircularProgressIndicator();
          } else if (state is HomeScreenErrorState) {
            return Text("Error: ${state.errorMessage}");
          } else if (state is HomeScreenLoadedState) {
            final model = state.model;
            final category = model.category;
            return DefaultTabController(
              length: category.length,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RestaurantsHeader(model: model),
                  SizedBox(height: size.height * 0.01),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    width: size.width,
                    height: 1,
                    color: const Color(0xffDDDDDD),
                  ),
                  TabBar(
                    isScrollable: true,
                    padding: const EdgeInsets.all(0.0),
                    indicatorColor: Colors.green,
                    labelColor: Colors.green,
                    labelStyle: const TextStyle(
                      color: Color(0xff11B546),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.28,
                    ),
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.28,
                    ),
                    tabs: category.map((c) {
                      return Tab(text: c.categoryName);
                    }).toList(),
                    indicatorPadding: const EdgeInsets.all(0.0),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const ScrollPhysics(),
                      children: category.map((e) {
                        return RestaurantsList(item: e.item);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Text("Something went wrong");
          }
        },
      ),
    );
  }
}
