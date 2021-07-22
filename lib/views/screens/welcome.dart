import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/colors.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundBlur(
        child: Text('djdjdjd'),
      ),
    );
  }
}
