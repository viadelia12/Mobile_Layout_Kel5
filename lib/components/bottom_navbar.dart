import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/pages/help.dart';
import 'package:mobile_layout_kel5/pages/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  List pages = [HomePage(), HelpPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEBC7E8),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_rounded), label: 'Help'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffA084CA),
        onTap: _onItemTapped,
      ),
    );
  }
}
