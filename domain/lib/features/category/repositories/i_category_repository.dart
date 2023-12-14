import 'package:domain/network_exception/network_exception.dart';

import '../../../result.dart';
import '../entities/category_entity.dart';

abstract class ICategoryRepository{
  Future<Result<List<CategoryEntity>,NetworkException>> getCategories();
}