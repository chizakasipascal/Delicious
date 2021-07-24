import 'package:bonappetit/views/screens/screens.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String welcom = '/welcom';
  static const String introScreens = '/introScreens';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    welcom: (BuildContext context) => Welcome(),
    splash: (BuildContext context) => Splash(),
    introScreens: (BuildContext context) => IntroScreens(),
    home: (BuildContext context) => HomeScreen()
  };
}
