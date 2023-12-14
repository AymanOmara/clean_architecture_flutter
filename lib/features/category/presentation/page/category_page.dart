import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layerd_architecture/features/category/business_logic/category_cubit.dart';
import 'package:layerd_architecture/features/category/business_logic/category_state.dart';
import 'package:layerd_architecture/features/category/presentation/widgets/categories.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryCubit, CategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        CategoryCubit cubit = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state is CategoryStateLoading ? CircularProgressIndicator() : SizedBox(),
              state is CategoryStateSuccess ? Expanded(child: CategoriesWidget(categories: state.categories)) : SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
