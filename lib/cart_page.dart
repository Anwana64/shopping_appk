import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;
  final Function(Map<String, dynamic>) removeFromCart;

  const CartPage({super.key, required this.cartItems, required this.removeFromCart});

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  void _removeFromCart(Map<String, dynamic> product) {
    setState(() {
      widget.removeFromCart(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: widget.cartItems.isEmpty
          ? const Center(
              child: Text(
                'Your cart is empty.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final product = widget.cartItems[index];
                return ListTile(
                  leading: Image.asset(product['image']),
                  title: Text(product['title']),
                  subtitle: Text('\$${product['price']}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      _removeFromCart(product);
                    },
                  ),
                );
              },
            ),
    );
  }
}
