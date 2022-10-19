import 'package:flutter/material.dart';

import '../constant/color/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMainColor,
      body: SafeArea(
        child: Text(''),
      ),
    );
  }
}
