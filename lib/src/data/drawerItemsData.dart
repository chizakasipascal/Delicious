import 'package:bonappetit/src/models/models.dart';

class DrawerData {
  static const home = DrawerItems(title: "Home");
  static const explore = DrawerItems(title: "Home");
  static const favorite = DrawerItems(title: "Home");
  static const messages = DrawerItems(title: "Home");
  static const profile = DrawerItems(title: "Home");
  static const settings = DrawerItems(title: "Home");
  static const logout = DrawerItems(title: "Home");
  static final List<DrawerItems> all = [
    home,
    explore,
    favorite,
    messages,
    profile,
    settings,
    logout
  ];
}
