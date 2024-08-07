import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item});
  final GroceryItem item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(color: item.category.color),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(item.name),
          const Spacer(),
          Text(item.quantity.toString())
        ],
      ),
    );
  }
}
