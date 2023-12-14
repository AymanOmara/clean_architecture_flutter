import 'package:data/network/models/features/category/remote_category.dart';
import 'package:domain/features/category/entities/category_entity.dart';

extension Mapper on CategoryModel{
  CategoryEntity toEntity(){
    return CategoryEntity(categoryName:strCategory ?? "" ,id: idCategory ?? "", imageUrl: strCategoryThumb ?? "");
  }
}
extension ListMapper on List<CategoryModel>{
  List<CategoryEntity> toEntities(){
    return map((e) => e.toEntity()).toList();
  }
}