import 'package:flutter/material.dart';
import 'widgets/item_boxes.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
final List<Map<String, String>> products = [
  {'image': 'lib/images/photos/bag 1.jpg', 'title': 'Bag 1'}, 
  {'image': 'lib/images/photos/bag 2.jpg', 'title': 'Bag 2'},
  {'image': 'lib/images/photos/bag 3.jpg', 'title': 'Bag 3'},
  {'image': 'lib/images/photos/dress 1.jpg', 'title': 'Dress 1'},
  {'image': 'libimages/photos/jew 1.jpg', 'title': 'Jewelry 1'},
  {'image': 'lib/images/photos/jew 2.jpg', 'title': 'Jewelry 2'},
  {'image': 'lib/images/photos/shoe 1.jpg', 'title': 'Shoe 1'},
  {'image': 'lib/images/photos/shoe 2.jpg', 'title': 'Shoe 2'},
];


    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 150.0,
        ),
        itemBuilder: (context, index) {
          return ItemBoxes(
            image: products[index]['image'] as String,
            title: products[index]['title'] as String,
            
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
