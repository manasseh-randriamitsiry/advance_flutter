import 'package:advance_flutter_practice/presentation/ressources/color_manager.dart';
import 'package:flutter/material.dart';

class Onboardingview extends StatefulWidget {
  const Onboardingview({super.key});

  @override
  State<Onboardingview> createState() => _OnboardingviewState();
}

class _OnboardingviewState extends State<Onboardingview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: Text('onBoarding view'),
      ),
    );
  }
}
