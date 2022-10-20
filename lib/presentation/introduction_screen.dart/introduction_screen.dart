import 'package:flutter/material.dart';

import '../constant/color/colors.dart';
import '../home/home_screen.dart';
import '../widget/elevated_button_widget.dart';

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
              ElvatedButtonWidget(
                buttonText: 'Get Started',
                onpressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<HomeScreen>(
                      builder: (BuildContext _) => const HomeScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
