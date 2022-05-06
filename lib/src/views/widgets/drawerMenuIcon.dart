import 'package:bonappetit/src/utils/colors.dart';
import 'package:flutter/material.dart';

class DrawerMenuIcon extends StatelessWidget {
  final VoidCallback openDrawer;
  final bool isDrawerOpen;
  const DrawerMenuIcon({
    Key? key,
    required this.openDrawer,
    required this.isDrawerOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: kPrimary.withOpacity(.5),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Icon(
                isDrawerOpen ? Icons.arrow_back : Icons.menu,
                color: kGreyColor,
                size: 19,
              ),
            ),
            onTap: () => openDrawer(),
          ),
        ),
      ),
    );
  }
}
