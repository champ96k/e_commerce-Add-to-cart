import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_header/restaurants_header_icon_button.dart';
import 'package:e_commerce_app/src/widget/primary_icon_button.dart';
import 'package:flutter/material.dart';

class RestaurantsHeader extends StatelessWidget {
  const RestaurantsHeader({super.key, required this.model});

  final RestaurantDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                model.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                  letterSpacing: 0.4,
                ),
              ),
              Text(
                model.dscription,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: 0.28,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RestaurantsHeaderIconButton(
                    text: '${model.review}',
                    iconColor: Colors.orange,
                    icon: Icons.star,
                  ),
                  RestaurantsHeaderIconButton(
                    text: '${model.totalReview} reviews',
                    iconColor: Colors.green,
                    icon: Icons.comment,
                  ),
                  RestaurantsHeaderIconButton(
                    text: '${model.deliveryTime} mins',
                    iconColor: Colors.blue,
                    icon: Icons.watch_later_outlined,
                  ),
                ],
              ),
            ],
          ),
          const PrimaryIconButton(icon: Icons.favorite_border, iconSize: 24.0),
        ],
      ),
    );
  }
}
