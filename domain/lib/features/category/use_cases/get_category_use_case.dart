import 'package:domain/features/category/entities/category_entity.dart';
import 'package:domain/features/category/repositories/i_category_repository.dart';
import 'package:domain/network_exception/network_exception.dart';

import '../../../result.dart';

class GetCategoryUseCase{
  final ICategoryRepository _repository;
  GetCategoryUseCase(this._repository);
  Future<Result<List<CategoryEntity>,NetworkException>> call()async{
    return await _repository.getCategories();
  }
}