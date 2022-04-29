import 'package:bonappetit/src/models/models.dart';

class DrawerData {
  static const home = DrawerItems(title: "Home");
  static const explore = DrawerItems(title: "My profile");
  static const favorite = DrawerItems(title: "Delivery Adresse");
  static const messages = DrawerItems(title: "Payment Methods");
  static const profile = DrawerItems(title: "Contact Us");
  static const settings = DrawerItems(title: "Settings");
  static const logout = DrawerItems(title: "Helps & FAQS");
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
