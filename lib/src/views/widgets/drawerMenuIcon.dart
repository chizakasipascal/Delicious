import 'package:bonappetit/src/utils/colors.dart';
import 'package:flutter/material.dart';

class DrawerMenuIcon extends StatelessWidget {
  const DrawerMenuIcon({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  final VoidCallback openDrawer;

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
            splashColor: KPrimary.withOpacity(.5),
            child: const SizedBox(
              width: 35,
              height: 35,
              child: Icon(
                Icons.menu,
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
