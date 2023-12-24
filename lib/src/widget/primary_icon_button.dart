import 'package:flutter/material.dart';

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
    super.key,
    required this.icon,
    this.color = Colors.white,
    this.iconSize = 16.0,
    this.onTap,
  });

  final IconData icon;
  final double iconSize;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28.0,
        height: 28.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: color),
          color: color.withOpacity(0.4),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Icon(
          icon,
          color: Colors.black87,
          size: iconSize,
        ),
      ),
    );
  }
}
