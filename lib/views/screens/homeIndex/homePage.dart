import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/utils.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnnonceCard(size: size),
            SizedBox(height: 10),
            Text(
              "Top semaine",
              style: TextStyle(
                color: BlackColor,
                fontSize: FontSize.meduim,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            NourritureCard(size: size),
            SizedBox(height: 10),
            NourritureCard(size: size),
          ],
        ),
      ),
    );
  }
}
