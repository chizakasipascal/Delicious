import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green, body: buildDrawer());
  }

  Widget buildDrawer() => const CustomerDrawer();
}
