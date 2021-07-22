
import 'package:bonappetit/views/screens/screens.dart';
import 'package:flutter/material.dart';


class Routes {
  Routes._();

  static const String bonappetit = '/bonappetit';

  static final routes = <String, WidgetBuilder>{
    bonappetit: (BuildContext context) => BonAppetit(),

  };
}
