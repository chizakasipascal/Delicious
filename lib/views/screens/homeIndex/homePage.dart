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
      child: Column(
        children: [
          Container(
            height: 160,
            width: size.width,
            decoration: BoxDecoration(
              color: OrangeColor,
              borderRadius: BorderRadius.circular(10),
            ),
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
                      fontSize: FontSize.max_meduim - 1,
                      fontWeight: FontWeight.bold,
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
