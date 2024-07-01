import 'package:flutter/material.dart';

class ItemBoxes extends StatefulWidget {
  final String image;
  final String title;

  const ItemBoxes({super.key, required this.image, required this.title});

  @override
  State<ItemBoxes> createState() => _ItemBoxesState();
}

class _ItemBoxesState extends State<ItemBoxes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 185,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Image(
              image: AssetImage(
                widget.image,
                
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(widget.title),
      ],
    );
  }
}
