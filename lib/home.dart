import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child:  TextField(
                      decoration: InputDecoration(
                        labelText: 'Search',
                        hintText: 'Enter search term',
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: const Icon(Icons.search),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
