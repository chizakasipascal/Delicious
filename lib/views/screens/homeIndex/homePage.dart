import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/utils.dart';
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
            SizedBox(
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
            ),
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
            Container(
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
            ),
            SizedBox(height: 10),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
