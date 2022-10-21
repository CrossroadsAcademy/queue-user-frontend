import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/colors.dart';

class GoogleFont {
  static final TextStyle style = GoogleFonts.montserrat(
    fontSize: 50,
    fontWeight: FontWeight.w600,
    color: splashText,
  );
  static final TextStyle headTextStyle = GoogleFonts.montserrat(
    fontSize: 26,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle subHeadTextStyle = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: appSubTextColor,
  );
  static final TextStyle textButtonStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: appMainColor,
    decoration: TextDecoration.underline,
  );
}
