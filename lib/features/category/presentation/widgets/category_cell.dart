import 'package:domain/features/category/entities/category_entity.dart';
import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  const CategoryCell({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(category.imageUrl),
          Text(category.categoryName),
        ],
      ),
    );
  }
}
