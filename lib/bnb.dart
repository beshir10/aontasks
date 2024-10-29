import 'package:aontasks/Screens/profile.dart';
import 'package:aontasks/auth/loginPage.dart';
import 'package:aontasks/khamsat/khamsatHome.dart';
import 'package:aontasks/khamsat/program.dart';
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
    Khamsathome(),
    Program(),
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
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,

        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسيه',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'السله',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'القائمه',
          ),


        ],
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
      ),
    );
  }

}
