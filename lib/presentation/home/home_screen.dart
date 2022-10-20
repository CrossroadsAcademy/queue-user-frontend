import 'package:flutter/material.dart';

import '../constant/color/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
