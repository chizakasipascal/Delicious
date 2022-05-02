import 'package:bonappetit/src/models/models.dart';
import 'package:flutter/material.dart';

class DrawerData {
  static const Orders = DrawerItems(title: "My Orders", icon: Icons.home);
  static const Profile = DrawerItems(title: "My Profile", icon: Icons.person);
  static const Delivery = DrawerItems(
    title: "Delivery Adresse",
    icon: Icons.map,
  );
  static const Payement = DrawerItems(
    title: "Payment Methods",
    icon: Icons.payment,
  );
  static const Contact = DrawerItems(
    title: "Contact Us",
    icon: Icons.contact_mail,
  );
  static const settings = DrawerItems(title: "Settings", icon: Icons.settings);
  static const helps = DrawerItems(title: "Helps & FAQS", icon: Icons.help);
  static final List<DrawerItems> all = [
    Orders,
    Profile,
    Delivery,
    Payement,
    Contact,
    settings,
    helps
  ];
}
