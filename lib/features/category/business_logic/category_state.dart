import 'package:domain/features/category/entities/category_entity.dart';

abstract class CategoryState {}

class CategoryStateInitial extends CategoryState {}

class CategoryStateLoading extends CategoryState {}

class CategoryStateSuccess extends CategoryState {
  final List<CategoryEntity> categories;

  CategoryStateSuccess({
    required this.categories,
  });
}

class CategoryStateError extends CategoryState {
  final String message;

  CategoryStateError({
    required this.message,
  });
}
