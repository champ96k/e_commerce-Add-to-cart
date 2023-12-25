import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/app_configs/screen_names.dart';
import 'package:e_commerce_app/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_header/restaurants_header.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_list.dart';
import 'package:e_commerce_app/src/widget/primary_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabBarBuilder extends StatelessWidget {
  const HomeTabBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is HomeScreenLoadingState) {
          return const Center(child: CircularProgressIndicator());
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
                Container(
                  height: size.height * 0.2,
                  width: size.width,
                  padding: EdgeInsets.only(top: size.height * 0.05),
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(model.backgroundImage),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4),
                        BlendMode.colorBurn,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PrimaryIconButton(
                        color: Colors.white,
                        icon: Icons.search,
                        borderColor: Colors.white,
                        height: 32.0,
                        width: 32.0,
                        onTap: () => _searchButtonOnTap(context),
                      ),
                      SizedBox(width: size.width * 0.06),
                      const PrimaryIconButton(
                        icon: Icons.share,
                        height: 32.0,
                        width: 32.0,
                      ),
                      const SizedBox(width: 16.0),
                    ],
                  ),
                ),
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
    );
  }

  void _searchButtonOnTap(BuildContext context) {
    final category = context.read<HomeScreenCubit>().category;
    if (category.isNotEmpty) {
      Navigator.of(context).pushNamed(
        ScreenNames.searchScreen,
        arguments: {'category': category},
      );
    }
  }
}
