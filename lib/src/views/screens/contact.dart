import 'package:bonappetit/src/views/widgets/drawerMenuIcon.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final VoidCallback openDrawer;
  const Contact({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: DrawerMenuIcon(openDrawer: () => openDrawer()),
      ),
      body: const Text("Contact"),
    );
  }
}
