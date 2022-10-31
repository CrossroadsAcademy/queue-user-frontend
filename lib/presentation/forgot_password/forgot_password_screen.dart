import 'package:flutter/material.dart';
import '../constant/colors/colors.dart';
import '../constant/fonts/google_fonts.dart';
import '../constant/sizes/constant_size.dart';
import '../widgets/elevated_button_widget/elevated_button.dart';
import '../widgets/text_field_widget/text_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  static const String routeName = '/forgot';
  static Route<ForgotPasswordScreen> route() {
    return MaterialPageRoute<ForgotPasswordScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ForgotPasswordScreen(),
    );
  }

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktrasperant,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBlackText,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 60,
          ),
          child: SingleChildScrollView(
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
                Image.asset(
                  'assets/images/forgot_password.png',
                ),
                kHeight30,
                Center(
                  child: Text(
                    'Enter your Registered Phone no.',
                    style: GoogleFont.forgotpasswordTextStyle,
                  ),
                ),
                kHeight10,
                TextFieldWidget(
                  controller: otpController,
                  hintText: 'Phone',
                ),
                kHeight10,
                Center(
                  child: ElvatedButtonWidget(
                    buttonText: 'Get OTP',
                    onpressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
