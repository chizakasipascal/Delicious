import 'package:bonappetit/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double xOffset = 0;
  double yOffset = 0;
  double xscaleFactory = 0;
  @override
  void initState() {
    openDrawer();
    super.initState();
  }

  void openDrawer() => setState(() {
        xOffset = 230;
        yOffset = 150;
        xscaleFactory = 0.7;
      });

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        xscaleFactory = 1;
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          SafeArea(child: buildDrawer()),
          buildPage(),

          // GestureDetector(
          //   onTap: closeDrawer(),
          //   child: AnimatedContainer(
          //     duration: const Duration(milliseconds: 2500),
          //     child: Container(
          //       transform: Matrix4.translationValues(xOffset, yOffset, 0)
          //         ..scale(0.7),
          //       child: ClipRRect(
          //         child: buildPage(),
          //         borderRadius: const BorderRadius.all(
          //           Radius.circular(20),
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget buildDrawer() => const CustomerDrawer();
  Widget buildPage() => const DelicousHome();
}

class DelicousHome extends StatelessWidget {
  final Function? onClicked;
  const DelicousHome({Key? key, this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => onClicked,
            icon: const Icon(Icons.menu),
          ),
        ),
        body: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
