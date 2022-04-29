import 'package:bonappetit/src/const/font_family.dart';
import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  fontFamily: FontFamily.roboto,
  primaryColor: KPrimary,
  splashColor: KPrimary.withOpacity(.5),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: KPrimary),
);
