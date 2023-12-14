import 'package:domain/features/category/entities/category_entity.dart';
import 'package:flutter/material.dart';
import 'package:layerd_architecture/features/category/presentation/widgets/category_cell.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.categories,
  });

  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: categories.map((e) => CategoryCell(category: e)).toList(),
    );
  }
}
