import 'package:e_commerce_app/core/dependency_injection/service_locator.dart';
import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/features/home_screen/domain/usecases/search_restaurant_use_cases.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_list.dart';
import 'package:e_commerce_app/features/home_screen/presentation/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, required this.category});

  final List<Category> category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => SearchCubit(
        category: category,
        useCases: getIt.get<SearchRestaurantUseCases>(),
      ),
      child: const SearchScreenContent(),
    );
  }
}

class SearchScreenContent extends StatelessWidget {
  const SearchScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchFilterLoadingState) {
              return Center(
                child: Column(
                  children: [
                    Text(state.message),
                    const SizedBox(height: 16.0),
                    const CircularProgressIndicator(),
                  ],
                ),
              );
            } else if (state is SearchFilterErrorState) {
              return Center(child: Text(state.errorMessage));
            } else if (state is SearchFilterState) {
              final category = state.category;
              final item = state.searchItem;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: cubit.textEditingController,
                            textInputAction: TextInputAction.search,
                            onChanged: (value) {
                              cubit.searchRestaurantItem(value.toLowerCase());
                            },
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(0.0),
                              prefixIcon: const Icon(Icons.search),
                              suffixIcon: const Icon(Icons.mic),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    if (item.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "${item.length} Search results...",
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ),
                      Expanded(child: RestaurantsList(item: item))
                    ] else ...[
                      const Text("Search recommendations "),
                      const SizedBox(height: 16.0),
                      Wrap(
                          children: category.map((e) {
                        return GestureDetector(
                          onTap: () {
                            cubit.searchRestaurantItem(
                              e.categoryName.toLowerCase(),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Text(
                              e.categoryName,
                              style: const TextStyle(
                                color: Color(0xff11B546),
                              ),
                            ),
                          ),
                        );
                      }).toList()),
                      if (state.message.isNotEmpty) ...[
                        const SizedBox(height: 30.0),
                        Center(child: Text(state.message)),
                      ],
                    ],
                  ],
                ),
              );
            } else {
              return const Center(child: Text("Something went wrong"));
            }
          },
        ),
      ),
    );
  }
}
