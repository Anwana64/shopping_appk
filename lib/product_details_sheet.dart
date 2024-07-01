

import 'package:flutter/material.dart';

class ProductDetailsSheet extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailsSheet({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product['title'] as String,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Image.asset(
            product['image'] as String,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            'Price: \$${product['price']}',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            product['decpt'] as String,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}