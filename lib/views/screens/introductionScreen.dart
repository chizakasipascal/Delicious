import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/colors.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({key}) : super(key: key);

  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, Routes.welcom);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 10.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Positioned(
              child: Container(
                height: size.height * .5,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.roundPlat),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          BackgroundBlur(
            child: Stack(
              children: [
                Container(
                  height: size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 100,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: GreyWithOpacity,
                            image: DecorationImage(
                                image: AssetImage(Assets.roundPlat),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: size.height * .6,
                          child: IntroductionScreen(
                            key: introKey,
                            scrollPhysics: NeverScrollableScrollPhysics(),
                            curve: Curves.bounceIn,
                            pages: [
                              PageViewModel(
                                title: "",
                                useScrollView: false,
                                bodyWidget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tous vos restaurants préférés",
                                      style: TextStyle(
                                        color: OrangeColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.max_meduim,
                                      ),
                                    ),
                                    Text(
                                      "Commandez dans le meilleur restaurant local avec une livraison facile à la demande",
                                      style: TextStyle(
                                        color: GreyColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontSize.max_min,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: pageDecoration,
                              ),
                              PageViewModel(
                                title: "",
                                useScrollView: false,
                                bodyWidget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Fiabilité inégalée",
                                      style: TextStyle(
                                        color: OrangeColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.max_meduim,
                                      ),
                                    ),
                                    Text(
                                      "Ayez l'esprit tranquille en suivant votre commande en temps réel",
                                      style: TextStyle(
                                        color: GreyColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontSize.max_min,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: pageDecoration,
                              ),
                              PageViewModel(
                                useScrollView: false,
                                title: "",
                                bodyWidget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Assistance\n",
                                        style: TextStyle(
                                          color: OrangeColor,
                                          fontSize: FontSize.max_min,
                                          fontWeight: FontWeight.bold,
                                          //fontFamily: 'Butter',
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "24h/24 et 7j/7",
                                            style: TextStyle(
                                                fontSize: FontSize.max_meduim),
                                          ),
                                          TextSpan(
                                            text: "\npour vous.",
                                            style: TextStyle(
                                                fontSize: FontSize.max_min),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Quelque chose se présente ? parlez à une personne réelle,nous sommes là",
                                      style: TextStyle(
                                        color: GreyColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontSize.max_min,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: pageDecoration,
                              ),
                            ],
                            onDone: () => _onIntroEnd(context),
                            showSkipButton: true,
                            skipFlex: 0,
                            nextFlex: 0,
                            skip: Text(
                              'Passer',
                              style: TextStyle(
                                  color: OrangeColor,
                                  fontSize: FontSize.meduim),
                            ),
                            next: Text(
                              'Suivant',
                              style: TextStyle(
                                  color: OrangeColor,
                                  fontSize: FontSize.meduim),
                            ),
                            done: Text(
                              'Terminer',
                              style: TextStyle(
                                  color: OrangeColor,
                                  fontSize: FontSize.meduim),
                            ),
                            dotsDecorator: const DotsDecorator(
                              size: Size(5.0, 5.0),
                              color: GreyWithOpacity,
                              activeSize: Size(10.0, 10.0),
                              activeColor: OrangeColor,
                              activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    25.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
