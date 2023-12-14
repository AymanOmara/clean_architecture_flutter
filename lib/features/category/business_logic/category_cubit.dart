import 'package:domain/features/category/use_cases/get_category_use_case.dart';
import 'package:domain/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState>{
  CategoryCubit(this.getCategoryUseCase):super(CategoryStateInitial()){
    getCategories();
  }
  GetCategoryUseCase getCategoryUseCase;
  void getCategories(){
    emit(CategoryStateLoading());
    getCategoryUseCase().then((value) {
      switch(value){
        case Success(value:final value):
          emit(CategoryStateSuccess(categories: value));
          break;
        case Failure(exception:final exception):
          emit(CategoryStateError(message: exception.message));
          break;
      }
    });
  }
}