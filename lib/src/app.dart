import 'package:espace_revendeur/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'const/app_theme.dart';
import 'const/routes.dart';
import 'const/strings.dart';
import 'views/screens/login_screen.dart';

/// Widget Application Espace Revendeur
class EspaceRevendeurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kGreyColor, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      initialRoute: Routes.initial,
      home: LoginScreen(),
      routes: Routes.routes,
    );
  }
}
