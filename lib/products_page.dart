import 'package:flutter/material.dart';
import 'product_details_sheet.dart';
import 'products_database.dart';
import 'widgets/item_boxes.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return ProductDetailsSheet(product: products[index]);
                  },
                );
              },
              child: ItemBoxes(
                image: products[index]['image'] as String,
                title: products[index]['title'] as String,
                price: products[index]['price'] as int,
              ),
            );
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}
