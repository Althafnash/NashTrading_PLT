import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  final String name;
  final double price;
  final double changePercent;
  final VoidCallback? onTap;

  const MarketCard({
    super.key,
    required this.name,
    required this.price,
    required this.changePercent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool positive = changePercent >= 0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 200,
        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Text(
              price.toStringAsFixed(5),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              '${positive ? '+' : ':'}${changePercent.toStringAsFixed(2)}%',
              style: TextStyle(
                fontSize: 20,
                color: positive ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
