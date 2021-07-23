import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/views/screens/homeIndex/homeIndex.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 0;
  var _pages = [
    HomePage(),
    RestaurantPage(),
    CommandePage(),
    ParametrePage(),
    ProfilPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(Assets.home),
              label: 'Home',
              tooltip: 'Acceuil'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.restaurant),
              label: 'Home',
              tooltip: 'Restaurant'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.commande),
              label: 'Home',
              tooltip: 'Commande'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.parametre),
              label: 'Home',
              tooltip: 'Parametre'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.profil),
              label: 'Home',
              tooltip: 'Profil'),
        ],
      ),
    );
  }
}
