import 'dart:async';

import 'package:advance_flutter_practice/presentation/ressources/assets_manager.dart';
import 'package:advance_flutter_practice/presentation/ressources/color_manager.dart';
import 'package:advance_flutter_practice/presentation/ressources/routes_manager.dart';
import 'package:flutter/material.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNextPage);
  }

  _goNextPage() {
    Navigator.pushReplacementNamed(context, Routes.onBoarding);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image(image: AssetImage(AppImageAssets.splashLogo))),
    );
  }
}
