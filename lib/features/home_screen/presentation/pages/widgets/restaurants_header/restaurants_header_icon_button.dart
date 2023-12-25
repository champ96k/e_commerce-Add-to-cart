import 'package:flutter/material.dart';

class RestaurantsHeaderIconButton extends StatelessWidget {
  const RestaurantsHeaderIconButton({
    super.key,
    required this.text,
    required this.iconColor,
    required this.icon,
  });

  final String text;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: _size.width * 0.03),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 18.0),
          SizedBox(width: _size.width * 0.01),
          Text(text),
        ],
      ),
    );
  }
}
