import 'package:bonappetit/constants/constanst.dart';
import 'package:bonappetit/utils/colors.dart';
import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/views/screens/homeIndex/homeIndex.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = new PageController();
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
      body: Stack(
        children: [
          Image.asset(
              Assets.burger), //TODO: A modifier avec un background approprier
          BackgroundBlur(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: _pages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(Assets.home),
              label: 'Acceuil',
              tooltip: 'Acceuil'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.restaurant),
              label: 'Restaurant',
              tooltip: 'Restaurant'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.commande),
              label: 'Commande',
              tooltip: 'Commande'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.parametre),
              label: 'Parametre',
              tooltip: 'Parametre'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.profil),
              label: 'Profil',
              tooltip: 'Profil'),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
