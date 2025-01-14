import 'package:advance_flutter_practice/presentation/ressources/routes_manager.dart';
import 'package:advance_flutter_practice/presentation/ressources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // private constructor
  int appState = 0;
  static final MyApp instance = MyApp._internal(); // instance singleton
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash,
      theme: getApplicationTheme(),
    );
  }
}
