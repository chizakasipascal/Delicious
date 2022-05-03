import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

import 'drawerMenuIcon.dart';

class AppBarWidget extends StatelessWidget {
  final String textOne, textTow;
  final Widget widget;
  const AppBarWidget({
    Key? key,
    required this.openDrawer,
    required this.isDrawerOpen,
    this.textOne = "Deliver to",
    this.textTow = "4102 Pretty View Lone",
    this.widget = const Icon(Icons.person),
  }) : super(key: key);

  final VoidCallback openDrawer;
  final bool isDrawerOpen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerMenuIcon(
            openDrawer: openDrawer,
            isDrawerOpen: isDrawerOpen,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    textOne,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: kGreyColor),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_rounded,
                    color: kGreyColor,
                  )
                ],
              ),
              Text(
                textTow,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: KPrimary, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                icon: widget,
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
