import 'package:flutter/material.dart';

import '../constant/colors/colors.dart';
import '../constant/fonts/google_fonts.dart';
import '../constant/sizes/constant_size.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  static const String routeName = '/otp';
  static Route<OtpScreen> route() {
    return MaterialPageRoute<OtpScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => OtpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: appBgColor,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: appBlackColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  kHeight,
                  Text(
                    'Enter OTP.',
                    style: GoogleFont.headTextStyle,
                  ),
                  kHeight20,
                  Center(child: Image.asset('assets/images/otp.png')),
                ],
              ),
              kHeight,
            ],
          ),
        ),
      ),
    );
  }
}
