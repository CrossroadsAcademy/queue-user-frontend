import 'package:flutter/material.dart';

import '../constant/font/google_font.dart';
import '../constant/size/constant_size.dart';
import '../widget/eleveted_button_widget/elevated_button_widget.dart';
import '../widget/text_field_widget/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Login to Account.',
              style: GoogleFont.headTextStyle,
            ),
            Text(
              'Login with your Username & Password',
              style: GoogleFont.subHeadTextStyle,
            ),
            kHeight50,
            Image.asset(
              'assets/images/login_account.png',
              height: 250,
            ),
            kHeight20,
            TextFieldWidget(
                controller: usernameController, hintText: 'Username'),
            TextFieldWidget(
                controller: passwordController, hintText: 'Password'),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Forgot Password',
                style: GoogleFont.textButtonStyle,
              ),
            ),
            kHeight20,
            Center(
              child: ElvatedButtonWidget(
                buttonText: 'Log In',
                onpressed: () {},
              ),
            )
          ],
        ),
      )),
    );
  }
}