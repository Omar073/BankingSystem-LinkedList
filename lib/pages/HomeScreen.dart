import 'package:bankingsystem_linkedlist/pages/AccountPage.dart';
import 'package:bankingsystem_linkedlist/pages/SearchCourses.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

import 'FavouritesPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Index of the selected tab

  final List<Widget> _pages = [
    const SearchCourses(), // Your original home page content
    FavouritesPage(), // Add your FavouritesPage here
    const SettingsPage(), // Placeholder for Account Page
    //const AdminPanel(), // Add your AdminPanel here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Show the selected page content
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
        items: [
          FlashyTabBarItem(
            icon: const Icon(
              Icons.home,
              size: 30,
              color: Colors.grey,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF52B6DF),
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.grey,
            ),
            title: const Text(
              'Favourites',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF52B6DF),
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.person,
              size: 30,
              color: Colors.grey,
            ),
            title: const Text(
              'Account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF52B6DF),
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.admin_panel_settings,
              size: 30,
              color: Colors.grey,
            ),
            title: const Text(
              'Admin',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF52B6DF),
              ),
            ),
          ),
        ],
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.easeInExpo,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
