import 'package:bonappetit/src/utils/colors.dart';
import 'package:bonappetit/src/views/screens/screens.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double xOffset;
  late double yOffset;
  late double scaleFactory;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        print("Open");
        xOffset = 230.0;
        yOffset = 150.0;
        scaleFactory = 0.75;
      });

  void closeDrawer() => setState(() {
        print("Close");
        xOffset = 0.0;
        yOffset = 0.0;
        scaleFactory = 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildDrawer() => const SafeArea(child: CustomerDrawer());
  Widget buildPage() {
    return GestureDetector(
      onTap: () => closeDrawer(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactory),
        child: Delicious(openDrawer: () => openDrawer()),
      ),
    );
  }
}
