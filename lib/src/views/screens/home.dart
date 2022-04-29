import 'package:bonappetit/src/utils/colors.dart';
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
  late double scaleFactor;
  @override
  void initState() {
    openDrawer();
    super.initState();
  }

  void openDrawer() => setState(() {
        xOffset = 230;
        yOffset = 150;
      });

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          SafeArea(
            child: buildDrawer(),
          ),
          GestureDetector(
            onTap: closeDrawer,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2500),
              child: Container(
                transform: Matrix4.translationValues(xOffset, yOffset, 0)
                  ..scale(scaleFactor),
                child: DelicousHome(onClicked: openDrawer),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDrawer() => const CustomerDrawer();
}

class DelicousHome extends StatelessWidget {
  final VoidCallback onClicked;
  const DelicousHome({Key? key, required this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => onClicked,
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
