
import 'package:flutter/material.dart';

class ItemBoxes extends StatelessWidget {
  final String image;
  final String title;
  final int price;

  const ItemBoxes({super.key, required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 185,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(title),
        Text('\$${price.toString()}'),
      ],
    );
  }
}
