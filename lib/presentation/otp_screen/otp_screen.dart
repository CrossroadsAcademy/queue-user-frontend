import 'package:flutter/material.dart';

import '../constant/colors/colors.dart';
import '../constant/fonts/google_fonts.dart';
import '../constant/sizes/constant_size.dart';
import '../widgets/elevated_button_widget/elevated_button.dart';
import '../widgets/otp_text_field/otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  static const String routeName = '/otp';
  static Route<OtpScreen> route() {
    return MaterialPageRoute<OtpScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => OtpScreen(),
    );
  }

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
              Column(
                children: <Widget>[
                  Text(
                    'A 4 Digit code has been sent to',
                    style: GoogleFont.subHeadTextStyle,
                  ),
                  Text(
                    '+91 9087654321',
                    style: GoogleFont.otpTextStyle,
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      OtpTextField(
                        isFocused: true,
                        controller: _sampleController,
                      ),
                      OtpTextField(
                        controller: _sampleController,
                      ),
                      OtpTextField(
                        controller: _sampleController,
                      ),
                      OtpTextField(
                        controller: _sampleController,
                      ),
                    ],
                  ),
                  kHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Code expires in :',
                        style: GoogleFont.otpExpireTextStyle,
                      ),
                      Text(
                        ' 2:59',
                        style: GoogleFont.otpTimeTextStyle,
                      ),
                    ],
                  ),
                  ElvatedButtonWidget(
                    width: 250,
                    buttonText: 'Verify & Proceed',
                    onpressed: () {},
                  ),
                  kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Recieve the OTP?",
                        style: GoogleFont.otpSubheaadTextStyle,
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Resend OTP',
                          style: GoogleFont.textButtonStyle,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
