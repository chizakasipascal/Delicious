import 'package:bonappetit/src/const/font_family.dart';
import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
  fontFamily: FontFamily.roboto,
  primaryColor: KPrimary,
  splashColor: KPrimary.withOpacity(.5),
  textTheme: TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 72.0, fontWeight: FontWeight.bold, color: kWhiteGreyColor),
    headline6: GoogleFonts.roboto(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: GoogleFonts.roboto(
      fontSize: 14.0,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 14.0,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: KPrimary),
);
