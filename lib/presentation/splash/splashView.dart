import 'package:advance_flutter_practice/presentation/ressources/assets_manager.dart';
import 'package:advance_flutter_practice/presentation/ressources/color_manager.dart';
import 'package:flutter/material.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image(image: AssetImage(AppImageAssets.splashLogo))),
    );
  }
}
