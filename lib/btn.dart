import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:guide/view/screens/building/view/addbuilding.dart';
import 'package:guide/view/screens/splashscreen.dart';

import 'package:guide/constants/colots.dart';



class Example extends StatefulWidget {
  const Example({super.key});

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
   static const List<Widget> _widgetOptions = <Widget>[
     SplashScreen(),
     AddBuilding(),
      SplashScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgetOptions.elementAt(_selectedIndex),
      
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: green1,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: gray2,
              tabs: const [
                GButton(
                  icon: Icons.house_rounded,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.dashboard_outlined,
                  text: 'Dashboard',
                ),
                GButton(
                  icon: Icons.person_2_rounded,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}