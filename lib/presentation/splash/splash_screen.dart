import 'dart:async';

import 'package:flutter/material.dart';

import '../constant/color/colors.dart';
import '../constant/font/google_font.dart';
import '../introduction_screen.dart/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute<IntroductionScreen>(
          builder: (BuildContext _) => const IntroductionScreen(),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: appMainColor,
      body: SafeArea(
        child: Center(
          child: Text(
            'Queue',
            style: GoogleFont.style,
          ),
        ),
      ),
    );
  }
}
