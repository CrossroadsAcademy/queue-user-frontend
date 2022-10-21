import 'package:flutter/material.dart';
import '../constant/color/colors.dart';
import '../constant/font/google_font.dart';
import '../constant/size/constant_size.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
            kHeight,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Create Account.',
                  style: GoogleFont.headTextstyle,
                ),
                Text(
                  'Signup with your phone number',
                  style: GoogleFont.subHeadTextstyle,
                ),
                kHeight20,
                Center(child: Image.asset('assets/images/create.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
