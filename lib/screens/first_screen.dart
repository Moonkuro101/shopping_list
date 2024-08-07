import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_item.dart';
import 'package:shopping_list/widgets/item.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Groceries"),
      ),
      body: Column(
        children: [
          for (final item in groceryItems)
            Item(
              item: item,
            )
        ],
      ),
    );
  }
}
