import 'package:bonappetit/src/models/models.dart';
import 'package:flutter/material.dart';

class DrawerData {
  static const home = DrawerItems(title: "Home", icon: Icons.home);
  static const explore = DrawerItems(title: "My profile", icon: Icons.person);
  static const favorite =
      DrawerItems(title: "Delivery Adresse", icon: Icons.map);
  static const messages =
      DrawerItems(title: "Payment Methods", icon: Icons.payment);
  static const profile =
      DrawerItems(title: "Contact Us", icon: Icons.contact_mail);
  static const settings = DrawerItems(title: "Settings", icon: Icons.settings);
  static const logout = DrawerItems(title: "Helps & FAQS", icon: Icons.help);
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
