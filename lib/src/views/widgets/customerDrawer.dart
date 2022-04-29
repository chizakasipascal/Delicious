import 'package:bonappetit/src/const/app_theme.dart';
import 'package:bonappetit/src/data/data.dart';
import 'package:flutter/material.dart';

class CustomerDrawer extends StatelessWidget {
  const CustomerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            builDrawerItems(context),
          ],
        ),
      );
  builDrawerItems(BuildContext context) => Column(
        children: DrawerData.all
            .map(
              (e) => ListTile(
                title: Text(e.title, style: themeData.textTheme.headline1),
                onTap: () {},
              ),
            )
            .toList(),
      );
}
