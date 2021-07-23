import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'constants/constanst.dart';
import 'views/screens/screens.dart';

class BonAppetit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      home: IntroScreens(),
      initialRoute: Routes.splash,
      routes: Routes.routes,
    );
  }
}
