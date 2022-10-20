import 'package:flutter/material.dart';

import '../constant/color/colors.dart';

class ElvatedButtonWidget extends StatelessWidget {
  const ElvatedButtonWidget({
    super.key,
    required this.buttonText,
    required this.onpressed,
  });

  final String buttonText;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll<Color>(appMainColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(180, 40),
        ),
      ),
      onPressed: onpressed,
      child: Text(
        buttonText,
      ),
    );
  }
}
