import 'package:bonappetit/src/views/screens/home.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String initial = 'initial';

  static final routes = <String, WidgetBuilder>{
    initial: (context) => const Home(),
  };
}
