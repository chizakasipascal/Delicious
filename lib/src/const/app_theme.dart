import 'package:bonappetit/src/const/font_family.dart';
import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  fontFamily: FontFamily.roboto,
  primaryColor: KPrimary,
  splashColor: KPrimary.withOpacity(.5),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(
      fontSize: 14.0,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: KPrimary),
);
