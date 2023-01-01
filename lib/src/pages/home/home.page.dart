// ignore_for_file: prefer_final_fields

import 'package:cafe/components/app.menu.drawer.dart';
import 'package:cafe/src/pages/cart/cart.page.dart';
import 'package:cafe/src/pages/favorites/favorites.page.dart';
import 'package:cafe/src/pages/home/components/body.home.page.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    BodyHomePage(),
    CartPage(),
    FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer: AppMenuDrawer(),
      appBar: _buildAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: appBottomNavigatonBar(),
    );
  }

  Widget appBottomNavigatonBar() {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.grey[900],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.coffee_rounded,
            color: _selectedIndex == 0 ? Colors.orange : Colors.grey[700],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_rounded,
            color: _selectedIndex == 1 ? Colors.orange : Colors.grey[700],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_rounded,
            color: _selectedIndex == 2 ? Colors.orange : Colors.grey[700],
          ),
          label: '',
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: yDefaultPadding / 2),
          child: IconButton(
            icon: Icon(Icons.local_grocery_store_rounded),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
