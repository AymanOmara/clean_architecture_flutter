import 'package:di/repositories.dart';
import 'package:domain/features/category/use_cases/get_category_use_case.dart';
import 'package:get_it/get_it.dart';

var useCaseInjector = GetIt.instance;
void setupUseCaseInjector(){
  useCaseInjector.registerFactory(() => GetCategoryUseCase(repositoryInjector()));
}