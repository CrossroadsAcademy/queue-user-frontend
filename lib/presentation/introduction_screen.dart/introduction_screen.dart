import 'package:flutter/material.dart';

import '../../widget/elevated_button_widget.dart';
import '../constant/color/colors.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/images/otp.png'),
              const ElvatedButtonWidget(
                buttonText: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
