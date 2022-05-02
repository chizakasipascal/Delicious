import 'package:bonappetit/src/data/drawerItemsData.dart';
import 'package:bonappetit/src/models/drawerItmes.dart';
import 'package:bonappetit/src/utils/colors.dart';
import 'package:bonappetit/src/views/screens/screens.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double xOffset;
  late double yOffset;
  late double scaleFactory;
  late bool isDrawerOpen;
  DrawerItems items = DrawerData.Orders;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        print("Open");
        xOffset = 230.0;
        yOffset = 150.0;
        scaleFactory = 0.75;
        isDrawerOpen = true;
      });

  void closeDrawer() => setState(() {
        print("Close");
        xOffset = 0.0;
        yOffset = 0.0;
        scaleFactory = 1;
        isDrawerOpen = false;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildDrawer() => SafeArea(
        child: SizedBox(
          width: xOffset,
          child: CustomerDrawer(
            onSelectedItem: (value) {
              switch (value) {
                // case DrawerData.Orders:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                //   return;
                // case DrawerData.Profile:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                //   return;
                // case DrawerData.Delivery:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                //   return;
                // case DrawerData.Payement:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                //   return;
                // case DrawerData.Contact:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                //   return;
                // case DrawerData.settings:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                //   return;
                // case DrawerData.helps:
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("${value.title}"),
                //     ),
                //   );
                // return;
                default:
                  setState(() => items = value);
                  closeDrawer();
              }
            },
          ),
        ),
      );
  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: () => closeDrawer(),
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactory),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: Container(
              decoration: BoxDecoration(
                color: isDrawerOpen ? kGreyColor : KPrimary,
                borderRadius: BorderRadius.circular(isDrawerOpen ? 10 : 0.0),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  getDrawerPage(),
                  Padding(
                    padding: isDrawerOpen
                        ? const EdgeInsets.only(left: 10.0, top: 10)
                        : const EdgeInsets.only(left: 0.0, top: 0.0),
                    child: getDrawerPage(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDrawerPage() {
    switch (items) {
      case DrawerData.Orders:
        return Orders(openDrawer: () => openDrawer());
      case DrawerData.Profile:
        return Profile(openDrawer: () => openDrawer());
      case DrawerData.Delivery:
        return Delivery(openDrawer: () => openDrawer());
      case DrawerData.Payement:
        return Payement(openDrawer: () => openDrawer());
      case DrawerData.Contact:
        return Contact(openDrawer: () => openDrawer());
      case DrawerData.settings:
        return Settings(openDrawer: () => openDrawer());
      case DrawerData.helps:
        return Settings(openDrawer: () => openDrawer());
      default:
        return Orders(openDrawer: () => openDrawer());
    }
  }
}
