import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import "package:google_nav_bar/google_nav_bar.dart";
import 'package:myapp/screens/profile.dart';
import 'package:myapp/screens/settings.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "App Utilities",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          actions: <Widget>[
            TextButton(
              onPressed: null,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  iconColor: Colors.white),
              child: const Icon(Icons.search),
            )
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GNav(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              selectedIndex: _selectedIndex,
              color: Colors.grey.shade500,
              hoverColor: Colors.grey,
              tabBackgroundColor: Colors.black,
              activeColor: Colors.grey.shade400,
              onTabChange: _onItemTapped,
              tabs: const <GButton>[
                GButton(icon: Icons.home_rounded, text: 'Home'),
                GButton(icon: Icons.notifications, text: 'Notifications'),
                GButton(icon: Icons.account_box_rounded, text: 'Profile'),
                GButton(icon: Icons.settings, text: 'Settings'),
              ],
            ),
          ),
        ));
  }
}
