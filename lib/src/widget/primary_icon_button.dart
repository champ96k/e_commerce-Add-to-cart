import 'package:flutter/material.dart';

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
    super.key,
    required this.icon,
    this.color = Colors.white,
    this.borderColor = Colors.transparent,
    this.iconSize = 16.0,
    this.onTap,
    this.height = 24.0,
    this.width = 24.0,
  });

  final IconData icon;
  final double iconSize;
  final Color color;
  final Color borderColor;
  final Function()? onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: color,
          borderRadius: BorderRadius.circular(6.0),
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
