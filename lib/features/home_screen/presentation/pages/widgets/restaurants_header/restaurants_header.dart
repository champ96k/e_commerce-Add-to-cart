import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/widgets/restaurants_header/restaurants_header_icon_button.dart';
import 'package:flutter/material.dart';

class RestaurantsHeader extends StatelessWidget {
  const RestaurantsHeader({super.key, required this.model});

  final RestaurantDetailsModel model;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
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
                model.description,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: 0.28,
                ),
              ),
              SizedBox(height: _size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RestaurantsHeaderIconButton(
                    text: '${model.ratings}',
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
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border,
                size: 16.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
