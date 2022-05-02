import 'package:bonappetit/src/utils/colors.dart';
import 'package:flutter/material.dart';

class Delicious extends StatelessWidget {
  final VoidCallback openDrawer;
  const Delicious({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
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
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 2"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
