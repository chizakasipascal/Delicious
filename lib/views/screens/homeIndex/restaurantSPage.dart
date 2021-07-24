import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/utils.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({key}) : super(key: key);

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
            NourritureCard(size: size),
            SizedBox(height: 10),
            NourritureCard(size: size),
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
