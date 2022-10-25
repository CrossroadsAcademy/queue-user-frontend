import 'package:flutter/material.dart';
import '../constant/font/google_font.dart';
import '../constant/size/constant_size.dart';
import '../widget/eleveted_button_widget/elevated_button_widget.dart';
import '../widget/text_field_widget/text_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Forgot Password.',
              style: GoogleFont.headTextStyle,
            ),
            Text(
              'Dont worry! It happens.Please enter the phone no.',
              style: GoogleFont.miniHeadTextStyle,
            ),
            kHeight30,
            Image.asset('assets/images/forgot_password.png'),
            kHeight30,
            Center(
              child: Text(
                'Enter your Registered Phone no.',
                style: GoogleFont.forgotpasswordTextStyle,
              ),
            ),
            kHeight10,
            TextFieldWidget(controller: otpController, hintText: 'Phone'),
            kHeight10,
            Center(
                child: ElvatedButtonWidget(
                    buttonText: 'Get OTP', onpressed: () {}))
          ],
        ),
      )),
    );
  }
}
