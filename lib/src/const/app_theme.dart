import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' show Platform;

final ThemeData themeData = ThemeData(
  textTheme: Platform.isAndroid
      ? GoogleFonts.robotoTextTheme()
      : GoogleFonts.sueEllenFranciscoTextTheme(),
  primaryColor: kPrimary,
  primarySwatch: kPrimary,
  splashColor: kPrimary.withOpacity(.5),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: kPrimary),
);
