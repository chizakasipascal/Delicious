import 'package:bonappetit/src/views/widgets/drawerMenuIcon.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  final VoidCallback openDrawer;
  final bool isDrawerOpen;
  const Orders({Key? key, required this.openDrawer, required this.isDrawerOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerMenuIcon(
                openDrawer: openDrawer,
                isDrawerOpen: isDrawerOpen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
