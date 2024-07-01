import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  List<String> categories = [
    'All',
    'Handbags',
    'Dresses',
    'Jewellery',
    'Shoes',
  ];
  String selectedCategory = "All";

  HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter search term',
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ChoiceChip(
                    label: Text(categories[index]),
                    selected: selectedCategory == categories[index],
                    onSelected: (bool selected) {
                      selectedCategory = categories[index];
                    },
                    selectedColor: Colors.black,
                    labelStyle: TextStyle(
                      color: selectedCategory == categories[index]
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'New Collections',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}