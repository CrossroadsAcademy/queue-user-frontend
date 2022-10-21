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
  static final TextStyle headTextstyle = GoogleFonts.montserrat(
    fontSize: 26,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle subHeadTextstyle = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: appSubTextColor,
  );
}
