import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/colors.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.introScreens);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Positioned(
              top: -size.height * .1,
              left: -size.width * .4,
              child: Container(
                height: size.height * .5,
                width: size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(Assets.roundPlat), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          BackgroundBlur(
            child: Container(
              width: size.width,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Bienvenue",
                            style: TextStyle(
                              color: OrangeColor,
                              fontSize: FontSize.max_meduim,
                              fontWeight: FontWeight.bold,
                              //fontFamily: 'Butter',
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " dans l'application",
                                style: TextStyle(fontSize: FontSize.max_min),
                              ),
                              TextSpan(
                                text: " de livraison de nourriture.",
                                style: TextStyle(fontSize: FontSize.max_min),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          "Profitez des livraison d'une variete des restaurants",
                          style: TextStyle(
                            color: GreyColor,
                            fontWeight: FontWeight.w600,
                            fontSize: FontSize.max_min,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
