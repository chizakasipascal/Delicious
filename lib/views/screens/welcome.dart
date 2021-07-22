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
      body: Container(
        height: size.height * .5,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.roundPlat),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.circle,
        ),
        child: BackgroundBlur(
          child: Container(
            height: size.height,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Bienvenue ",
                    style: TextStyle(
                        color: OrangeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.max,
                        fontFamily: 'Butter'),
                    children: <TextSpan>[
                      TextSpan(
                        text: "dans l'application",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: " de livraison de nourriture",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
