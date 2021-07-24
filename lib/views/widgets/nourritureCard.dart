import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/utils.dart';
import 'package:flutter/material.dart';

class NourritureCard extends StatelessWidget {
  const NourritureCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 170,
              width: size.width,
              child: Image.asset(
                Assets.roundPlat,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 60,
              width: size.width,
              child: Container(
                color: GreyWithOpacity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Chicken Pasta ",
                              style: TextStyle(
                                color: BlackColor,
                                fontSize: FontSize.lard,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "by LaRosta",
                                  style: TextStyle(
                                    color: GreyColor,
                                    fontSize: FontSize.meduim,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "3k recommender cette semaine",
                            style: TextStyle(
                              color: GreyColor,
                              fontSize: FontSize.meduim - 2,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "14\$-120\$",
                            style: TextStyle(
                              color: GreyColor,
                              fontSize: FontSize.meduim - 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "4\$-12\$",
                            style: TextStyle(
                              color: BlackColor,
                              fontSize: FontSize.lard,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
