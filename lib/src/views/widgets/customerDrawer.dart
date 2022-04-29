import 'package:bonappetit/src/data/data.dart';
import 'package:bonappetit/src/utils/utils.dart';
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                title: Text(
                  e.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: kGreyColor),
                ),
                onTap: () {},
              ),
            )
            .toList(),
      );
}
