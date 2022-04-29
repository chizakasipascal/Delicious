import 'package:espace_revendeur/src/const/font_family.dart';
import 'package:espace_revendeur/src/utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: kRedColor,
  textTheme: _textTheme,
  fontFamily: FontFamily.ubuntu,
  splashColor: kRedColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(secondary: kRedColor),
  textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
);

final TextTheme _textTheme = TextTheme(
  subtitle2: TextStyle(
    color: kTextColor,
  ),
);
