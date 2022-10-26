import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/';
  static Route<SplashScreen> route() {
    return MaterialPageRoute<SplashScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
