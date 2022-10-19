import 'package:flutter/material.dart';

import '../presentation/constant/color/colors.dart';

class ElvatedButtonWidget extends StatelessWidget {
  const ElvatedButtonWidget({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

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
      onPressed: () {},
      child: Text(
        buttonText,
      ),
    );
  }
}
