import 'package:aontasks/Screens/profile.dart';
import 'package:aontasks/auth/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:aontasks/Screens/homePage.dart';


class BNB extends StatefulWidget {
  const BNB({super.key});

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int _selectedindex = 0;

  List<Widget> _pages = [
    Homepage(),
    Loginpage(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(),

      body: IndexedStack(
        index: _selectedindex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade900,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.cyan,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),


        ],
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
      ),
    );
  }

}
