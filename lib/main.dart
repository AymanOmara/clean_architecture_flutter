import 'package:flutter/material.dart';
import 'package:layerd_architecture/helpers/constants.dart';
import 'app_router.dart';
import 'helpers/injector.dart';

void main() {
  setupInjector();
  runApp(MyApp(router: AppRouter(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});

  final AppRouter router;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: router.generateRouter,
      initialRoute:AppRoutes.category,
    );
  }
}
