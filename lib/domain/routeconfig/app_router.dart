import 'dart:developer';

import 'package:flutter/material.dart';

import '../../presentation/introduction_screen.dart/introduction_screen.dart';
import '../../presentation/splash/splash_screen.dart';

class AppRoute {
  static Route<Widget> onGenerateRoute(RouteSettings settings) {
    log('Route page to ${settings.name}');
    switch (settings.name) {
      case '/':
        return SplashScreen.route();
      case IntroductionScreen.routeName:
        return IntroductionScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route<Scaffold> _errorRoute() {
    return MaterialPageRoute<Scaffold>(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Error Router'),
        ),
      ),
    );
  }
}