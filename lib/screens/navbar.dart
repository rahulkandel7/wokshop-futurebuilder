import 'package:day1/screens/counter.dart';
import 'package:day1/screens/homepage.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final _widgets = [
    HomePage(),
    const Counter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home Page'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: 'Favrpite Page',
          )
        ],
      ),
    );
  }
}
