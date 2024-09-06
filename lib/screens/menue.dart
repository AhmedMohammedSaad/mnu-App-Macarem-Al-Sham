import 'package:flutter/material.dart';
import 'package:makarem_alsham/model/modle.dart';

class ItemDetailScreen extends StatelessWidget {
  final MenuItem item;
  final String categoryImageUrl;

  const ItemDetailScreen({required this.item, required this.categoryImageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(categoryImageUrl,
                fit: BoxFit.cover, width: double.infinity, height: 200),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                item.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '${item.price} ج.م',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
