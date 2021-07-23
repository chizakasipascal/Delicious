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
      body: Stack(
        children: [
          Container(
            child: Positioned(
              bottom: -size.height * .1,
              right: -size.width * .4,
              child: Container(
                height: size.height * .3,
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
            child: Stack(
              children: [
                Container(
                  height: size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: -15,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: OrangeColor,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 50,
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: OrangeColor,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 250,
                        left: -10,
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: BluePenColor,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        right: 120,
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: YelloColor,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 240,
                        right: 160,
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: GreyWithOpacity,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 270,
                        right: 40,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: GreyWithOpacity,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 160,
                        right: 5,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: BluePenColor,
                            ),
                            child: Center(
                              child: Image.asset(Assets.burger),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: GreyWithOpacity,
                                  // image: DecorationImage(
                                  //     image: AssetImage(Assets.roundPlat),
                                  //     fit: BoxFit.cover),
                                ),
                                child: Center(
                                  child: Image.asset(Assets.burger),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "BonAppetit",
                        style: TextStyle(
                          color: OrangeColor,
                          fontSize: FontSize.max,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Butter',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Trouvez votre ideal pour manger, rencontrer et reservez-le partout.😉",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: GreyColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontSize.meduim,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: size.width,
                        child: MaterialButton(
                          child: Text(
                            "Commercer",
                            style: TextStyle(
                                color: WhiteColor, fontSize: FontSize.meduim),
                          ),
                          color: OrangeColor,
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.home),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: size.width,
                        child: MaterialButton(
                          child: Text(
                            "Connexion",
                            style: TextStyle(
                                color: OrangeColor, fontSize: FontSize.meduim),
                          ),
                          // color: OrangeColor,
                          onPressed: () {},
                        ),
                      ),
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
