import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/constants.dart';
import 'package:e_commerce_app/features/home_screen/data/models/restaurant_details_model.dart';
import 'package:e_commerce_app/src/widget/primary_icon_button.dart';
import 'package:flutter/material.dart';

class RestaurantsListItem extends StatelessWidget {
  const RestaurantsListItem({super.key, required this.element});
  final Item element;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffDDDDDD),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: element.image ?? Constants.placeholderImage,
              height: 120.0,
              width: 120.0,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(width: size.width * 0.03),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  element.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.28,
                  ),
                ),
                Text(
                  element.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.28,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: [
                    Text(
                      "₹ ${element.amount}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.28,
                      ),
                    ),
                    const Spacer(),
                    const PrimaryIconButton(
                      icon: Icons.remove,
                      color: Color(0xff11B546),
                    ),
                    SizedBox(width: size.width * 0.03),
                    const Text(
                      "1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.28,
                      ),
                    ),
                    SizedBox(width: size.width * 0.03),
                    const PrimaryIconButton(
                      icon: Icons.add,
                      color: Color(0xff11B546),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
