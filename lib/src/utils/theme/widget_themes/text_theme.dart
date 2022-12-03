import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline3: GoogleFonts.montserrat(
      fontSize: 24,
      // fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.poppins(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline3: GoogleFonts.montserrat(
      fontSize: 24,
      // fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.poppins(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  );
}
