import 'package:flutter/material.dart';
import 'package:makarem_alsham/model/modle.dart';
import 'package:makarem_alsham/screens/menue.dart';

class CategoryItemsScreen extends StatelessWidget {
  final MenuCategory category;

  const CategoryItemsScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.category),
      ),
      body: ListView.builder(
        itemCount: category.items.length,
        itemBuilder: (context, index) {
          final item = category.items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(
                    item: item,
                    categoryImageUrl: category.imageUrl,
                  ),
                ),
              );
            },
            child: Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${item.price} ج.م',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
