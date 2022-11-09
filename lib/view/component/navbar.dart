import 'package:favoting/constants/r.dart';
import 'package:favoting/view/dashboard.dart';
import 'package:favoting/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

int _selectedIndex = 0;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _children = [
    new DashboardScreen(),
    new ProfileScreen(),
  ];

  @override
  _onItemTapped(int tabIndex) {
    switch (tabIndex) {
      case 0:
        if (_selectedIndex != 0) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (builder) {
            print('index : $_selectedIndex');
            print('index2 : $tabIndex');
            return ProfileScreen();
          }));
        }
        break;
      case 1:
        if (_selectedIndex != 1) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (builder) {
            print('index : $_selectedIndex');
            print('index2 : $tabIndex');
            return DashboardScreen();
          }));
        }
        break;
      case 2:
        if (_selectedIndex != 2) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (builder) {
            print('index : $_selectedIndex');
            print('index2 : $tabIndex');
            return ProfileScreen();
          }));
        }
        break;
    }
    setState(() {
      _selectedIndex = tabIndex;
    });
  }

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
      child: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          selectedIconTheme: IconThemeData(size: 30),
          elevation: 0,
          unselectedIconTheme: IconThemeData(
            color: Colors.black54,
          ),
          selectedItemColor: R.colors.primary,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Chats',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
