import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/utils.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntroPageTrois extends StatelessWidget {
  const IntroPageTrois({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
