
import 'package:bonappetit/views/screens/screens.dart';
import 'package:flutter/material.dart';


class Routes {
  Routes._();

  static const String welcom = '/welcom';

  static final routes = <String, WidgetBuilder>{
    welcom: (BuildContext context) => Welcome(),

  };
}
