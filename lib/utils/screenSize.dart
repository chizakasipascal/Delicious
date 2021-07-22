import 'package:flutter/material.dart';

double screenSize(double size, BuildContext context) {
  double drawingHeight =
      MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
  return size * drawingHeight / MediaQuery.of(context).size.height;
}
