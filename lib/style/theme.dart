import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/style/colors.dart';

ThemeData buildTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: kDarkNavyBlue,
    accentColor: kOrange,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kOrange,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: kNavyBlue,
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        fontSize: 64,
        color: kWhite,
        fontWeight: FontWeight.w700,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 50,
        color: kWhite,
        fontWeight: FontWeight.w600,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 24,
        color: kWhite,
        fontWeight: FontWeight.w600,
      ),
      headline4: GoogleFonts.poppins(
        fontSize: 24,
        color: kWhite,
        fontWeight: FontWeight.w400,
      ),
      headline5: GoogleFonts.poppins(
        fontSize: 16,
        color: kNavyBlue,
        fontWeight: FontWeight.w600,
      ),
      headline6: GoogleFonts.poppins(
        fontSize: 16,
        color: kWhite.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 16,
        color: kWhite,
        fontWeight: FontWeight.w200,
      ),
      subtitle2: GoogleFonts.poppins(
        fontSize: 16,
        color: kWhite,
        fontWeight: FontWeight.w200,
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        color: kWhite,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 14,
        color: kDarkNavyBlue,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
