import 'package:data/network/base_api.dart';
import 'package:data/network/models/features/category/category_mapper.dart';
import 'package:data/network/models/features/category/category_target.dart';
import 'package:data/network/models/features/category/remote_category.dart';
import 'package:domain/features/category/entities/category_entity.dart';
import 'package:domain/features/category/repositories/i_category_repository.dart';
import 'package:domain/network_exception/network_exception.dart';
import 'package:domain/result.dart';
class CategoryRepository implements ICategoryRepository{
  BaseApi api;
  CategoryRepository(this.api);
  @override
  Future<Result<List<CategoryEntity>,NetworkException>> getCategories() async{
    var result =  await api.fetchData<List<CategoryModel>>(CategoryTarget(), CategoryModel());
    switch(result){
      case Success(value:final value):
        return  Success(value.toEntities());
      case Failure(exception:final exception):
        return Failure(exception);
    }
  }

}