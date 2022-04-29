import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  primaryColor: KPrimary,

  // Define the default font family.
  fontFamily: 'Georgia',

  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  // primaryColor: kRedColor,
  // textTheme: TextTheme(
  // subtitle2: TextStyle(
  //   color: kTextColor,
  // ),
  // fontFamily: FontFamily.ubuntu,
  // splashColor: kRedColor,
  // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
  //     .copyWith(secondary: kRedColor),
  // textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
);
