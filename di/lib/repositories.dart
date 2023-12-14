import 'package:data/network/base_api.dart';
import 'package:data/repositories/features/category/category_repository.dart';
import 'package:domain/features/category/repositories/i_category_repository.dart';
import 'package:get_it/get_it.dart';

var repositoryInjector = GetIt.instance;

void setupRepositoryInjector() {
  repositoryInjector.registerSingleton(BaseApi());
  repositoryInjector.registerSingleton<ICategoryRepository>(CategoryRepository(repositoryInjector()));
}