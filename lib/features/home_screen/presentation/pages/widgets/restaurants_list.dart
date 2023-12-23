import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:flutter/material.dart';

import 'restaurants_list_item.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({super.key, required this.item});

  final List<Item> item;

  @override
  Widget build(BuildContext context) {
    if (item.isEmpty) {
      return const SizedBox();
    }
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: item.length,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final element = item[index];
        return RestaurantsListItem(element: element);
      },
    );
  }
}
