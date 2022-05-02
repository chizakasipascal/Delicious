import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

class Delicious extends StatelessWidget {
  final VoidCallback openDrawer;
  const Delicious({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 25.0,
          onPressed: openDrawer,
          icon: const Icon(
            Icons.arrow_back,
            color: kWhiteGreyColor,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
