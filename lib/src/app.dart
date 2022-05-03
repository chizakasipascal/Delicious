import 'package:bonappetit/src/utils/colors.dart';
import 'package:bonappetit/src/views/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'const/app_theme.dart';
import 'const/routes.dart';
import 'const/strings.dart';

class Delicious extends StatelessWidget {
  const Delicious({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: KPrimary, // navigation bar color
      statusBarColor: KPrimary, // status bar color
    ));
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.top,
    //   SystemUiOverlay.bottom,
    // ]);

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top],
    );
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
