import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/utils.dart';
import 'package:flutter/material.dart';

class AnnonceCard extends StatelessWidget {
  const AnnonceCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: size.width,
      child: Card(
        color: OrangeColor,
        elevation: 2,
        shadowColor: GreyWithOpacity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Goute a nos plats",
                    style: TextStyle(
                      color: WhiteColor,
                      fontSize: FontSize.max_min,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Image.asset(Assets.commande),
                  )
                ],
              ),
              Text(
                "les plus populaire.",
                style: TextStyle(
                  color: WhiteColor,
                  fontSize: FontSize.max_meduim - 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
