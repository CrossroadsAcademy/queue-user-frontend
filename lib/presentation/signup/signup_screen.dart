import 'package:flutter/material.dart';
import '../constant/color/colors.dart';
import '../constant/font/google_font.dart';
import '../constant/size/constant_size.dart';
import '../widget/eleveted_button_widget/elevated_button_widget.dart';
import '../widget/text_field_widget/text_field_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _sampleController = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                kHeight,
                Text(
                  'Create Account.',
                  style: GoogleFont.headTextStyle,
                ),
                Text(
                  'Signup with your phone number',
                  style: GoogleFont.subHeadTextStyle,
                ),
                kHeight20,
                Center(child: Image.asset('assets/images/create.png')),
              ],
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFieldWidget(
                    controller: _sampleController,
                    hintText: 'Username',
                  ),
                  TextFieldWidget(
                    controller: _sampleController,
                    hintText: 'Phone',
                  ),
                  TextFieldWidget(
                    controller: _sampleController,
                    hintText: 'Password',
                  ),
                  kHeight10,
                  ElvatedButtonWidget(
                    buttonText: 'Get OTP',
                    onpressed: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account?',
                        style: GoogleFont.subHeadTextStyle,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: GoogleFont.textButtonStyle,
                        ),
                      )
                    ],
                  ),
                  kHeight,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
