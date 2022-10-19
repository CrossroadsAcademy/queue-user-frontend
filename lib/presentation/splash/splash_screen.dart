import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/color/colors.dart';
import '../constant/font/google_font.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
