import 'package:flutter/material.dart';
import 'package:makarem_alsham/model/modle.dart';

class CategoreMenu extends StatelessWidget {
  const CategoreMenu(
    this.menuCategory,
    this.itemIndex, {
    super.key,
  });
  final int itemIndex;
  final MenuCategory menuCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 60,
          image: AssetImage(menuCategory.imageUrl),
        ),
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          menuCategory.category,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
