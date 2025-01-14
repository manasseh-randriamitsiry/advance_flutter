import 'package:advance_flutter_practice/presentation/detail/detailView.dart';
import 'package:advance_flutter_practice/presentation/forgotPassword/forgotPasswordView.dart';
import 'package:advance_flutter_practice/presentation/login/loginView.dart';
import 'package:advance_flutter_practice/presentation/main/mainview.dart';
import 'package:advance_flutter_practice/presentation/onBoarding/onBoardingView.dart';
import 'package:advance_flutter_practice/presentation/register/registerView.dart';
import 'package:advance_flutter_practice/presentation/splash/splashView.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = "/";
  static const String onBoarding = "/onboarding";
  static const String login = "/login";
  static const String register = "/register";
  static const String forgotPassword = "/forgotPassword";
  static const String main = "/main";
  static const String detail = "/detail";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => Splashview());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => Onboardingview());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => Loginview());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => Registerview());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => Forgotpasswordview());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => Mainview());
      case Routes.detail:
        return MaterialPageRoute(builder: (_) => Detailview());
      default:
        return Undefinedroute();
    }
  }

  static Route<dynamic> Undefinedroute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('No route Found'),
        ),
        body: Text('No route found'),
      ),
    );
  }
}
