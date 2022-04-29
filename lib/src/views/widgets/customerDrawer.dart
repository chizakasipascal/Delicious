import 'package:bonappetit/src/data/data.dart';
import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomerDrawer extends StatelessWidget {
  const CustomerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: CircleAvatar(
                        backgroundColor: KPrimary.withOpacity(.5),
                        child: const SizedBox(
                          height: 90.0,
                          width: 90.0,
                          child: CircleAvatar(
                            backgroundColor: kWhiteGreyColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "pascalkasichiza@gmail.com",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: kGreyColor.withOpacity(.6),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            builDrawerItems(context),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("data"),
            )
          ],
        ),
      );
  builDrawerItems(BuildContext context) => Column(
        children: DrawerData.all
            .map(
              (e) => ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                leading: Icon(
                  e.icon,
                  color: kGreyColor,
                ),
                title: Text(
                  "${e.title}",
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
