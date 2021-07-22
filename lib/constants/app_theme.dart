
import 'package:bonappetit/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  //scaffoldBackgroundColor: Background, //Background
  backgroundColor: Background,
  //primarySwatch: Blue,

  primaryColor: Blue,
  accentColor: Background,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Blue,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Blue,
      primary: WhiteColor,
      shadowColor: Grey,
      textStyle: GoogleFonts.roboto(
        //fontSize: FontSize.lard,
        color: WhiteColor,
      ),
    ),
  ),

  //textTheme: _textTheme,

  // fontFamily: GoogleFonts.roboto(),
  splashColor: Background,
);
