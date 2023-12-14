import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layerd_architecture/features/category/business_logic/category_cubit.dart';
import 'package:layerd_architecture/helpers/constants.dart';

import 'features/category/presentation/page/category_page.dart';
import 'helpers/injector.dart';
class AppRouter{
  Route? generateRouter(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.category:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CategoryCubit>(),
            child: const CategoryPage(),
          ),
        );
    }
    return null;
  }
}