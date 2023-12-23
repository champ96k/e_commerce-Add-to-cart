import 'package:flutter/material.dart';

class MerchantInfoButton extends StatelessWidget {
  const MerchantInfoButton({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final gap = size.width * 0.03;
    return Padding(
      padding: EdgeInsets.only(right: gap),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 16.0),
          SizedBox(width: gap),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              letterSpacing: 0.24,
            ),
          ),
        ],
      ),
    );
  }
}
