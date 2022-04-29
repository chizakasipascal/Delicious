import 'package:bonappetit/src/views/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'const/app_theme.dart';
import 'const/routes.dart';
import 'const/strings.dart';

/// Widget Application Espace Revendeur
class BonAppetit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: themeData.primaryColor, // status bar color
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      initialRoute: Routes.initial,
      home: const Home(),
      routes: Routes.routes,
    );
  }
}
