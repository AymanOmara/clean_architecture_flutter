import 'package:data/network/decodable.dart';

class CategoryModel implements Decodable<List<CategoryModel?>> {
  String? idCategory;
  String? strCategory;
  String? strCategoryThumb;

  CategoryModel();

  @override
  List<CategoryModel?> fromJson(json) {
    return (json["categories"] as List).map((e) {
      return  CategoryModel()
        ..idCategory = e['idCategory']
        ..strCategory = e['strCategory']
        ..strCategoryThumb = e['strCategoryThumb'];
    }).toList();
  }
}