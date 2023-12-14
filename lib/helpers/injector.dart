import 'package:di/repositories.dart';
import 'package:di/use_cases.dart';
import 'package:get_it/get_it.dart';
import 'package:layerd_architecture/features/category/business_logic/category_cubit.dart';

var getIt = GetIt.instance;
void setupInjector(){
  setupRepositoryInjector();
  setupUseCaseInjector();
  getIt.registerFactory(() => CategoryCubit(useCaseInjector()));
}