// import 'package:bonappetit/constants/constanst.dart';
// import 'package:bonappetit/utils/colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// final introKey = GlobalKey<IntroductionScreenState>();

//   void _onIntroEnd(context) {
//     Navigator.pushReplacementNamed(context, Routes.welcom);
//   }

//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(fontSize: 10.0);
//     const pageDecoration = const PageDecoration(
//       titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//       bodyTextStyle: bodyStyle,
//       descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Colors.white,
//       imagePadding: EdgeInsets.zero,
//     );

// Align(
//                         alignment: Alignment.bottomCenter,
//                         child: SizedBox(
//                           height: size.height * .6,
//                           child: IntroductionScreen(
//                             key: introKey,
//                             curve: Curves.bounceIn,
//                             pages: [
//                               PageViewModel(
//                                 title: "",
//                                 useScrollView: false,
//                                 bodyWidget: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Tous vos restaurants préférés",
//                                       style: TextStyle(
//                                         color: OrangeColor,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: FontSize.max_meduim,
//                                       ),
//                                     ),
//                                     Text(
//                                       "Commandez dans le meilleur restaurant local avec une livraison facile à la demande",
//                                       style: TextStyle(
//                                         color: GreyColor,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: FontSize.max_min,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 decoration: pageDecoration,
//                               ),
//                               PageViewModel(
//                                 title: "",
//                                 useScrollView: false,
//                                 bodyWidget: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Fiabilité inégalée",
//                                       style: TextStyle(
//                                         color: OrangeColor,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: FontSize.max_meduim,
//                                       ),
//                                     ),
//                                     Text(
//                                       "Ayez l'esprit tranquille en suivant votre commande en temps réel",
//                                       style: TextStyle(
//                                         color: GreyColor,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: FontSize.max_min,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 decoration: pageDecoration,
//                               ),
//                               PageViewModel(
//                                 useScrollView: false,
//                                 title: "",
//                                 bodyWidget: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     RichText(
//                                       text: TextSpan(
//                                         text: "Assistance\n",
//                                         style: TextStyle(
//                                           color: OrangeColor,
//                                           fontSize: FontSize.max_min,
//                                           fontWeight: FontWeight.bold,
//                                           //fontFamily: 'Butter',
//                                         ),
//                                         children: <TextSpan>[
//                                           TextSpan(
//                                             text: "24h/24 et 7j/7",
//                                             style: TextStyle(
//                                                 fontSize: FontSize.max_meduim),
//                                           ),
//                                           TextSpan(
//                                             text: "\npour vous.",
//                                             style: TextStyle(
//                                                 fontSize: FontSize.max_min),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       "Quelque chose se présente ? parlez à une personne réelle,nous sommes là",
//                                       style: TextStyle(
//                                         color: GreyColor,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: FontSize.max_min,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 decoration: pageDecoration,
//                               ),
//                             ],
//                             onDone: () => _onIntroEnd(context),
//                             showSkipButton: true,
//                             skipFlex: 0,
//                             nextFlex: 0,
//                             skip: Text(
//                               'Passer',
//                               style: TextStyle(
//                                   color: OrangeColor,
//                                   fontSize: FontSize.meduim),
//                             ),
//                             next: Text(
//                               'Suivant',
//                               style: TextStyle(
//                                   color: OrangeColor,
//                                   fontSize: FontSize.meduim),
//                             ),
//                             done: Text(
//                               'Terminer',
//                               style: TextStyle(
//                                   color: OrangeColor,
//                                   fontSize: FontSize.meduim),
//                             ),
//                             dotsDecorator: const DotsDecorator(
//                               size: Size(5.0, 5.0),
//                               color: GreyWithOpacity,
//                               activeSize: Size(10.0, 10.0),
//                               activeColor: OrangeColor,
//                               activeShape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(
//                                     25.0,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       )
//
