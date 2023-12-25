import 'package:flutter/material.dart';

class CartFooter extends StatelessWidget {
  const CartFooter({
    super.key,
    required this.itemsLength,
    required this.totalAmount,
  });

  final int itemsLength;
  final double totalAmount;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.center,
        height: _size.height * 0.1,
        width: _size.width,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            children: [
              Text(
                "$itemsLength item",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                  letterSpacing: 0.28,
                ),
              ),
              const Text(
                '  |  ',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "₹ $totalAmount",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                  letterSpacing: 0.28,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "View cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      letterSpacing: 0.28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
