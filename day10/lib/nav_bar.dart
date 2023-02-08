import 'package:day10/widgets/home.dart';
import 'package:day10/widgets/profile.dart';
import 'package:day10/widgets/search.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  List<Widget> pages = [const Home(), const Search(), const Profile()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[currentIndex],
      bottomNavigationBar: GNav(
        style: GnavStyle.google,
        iconSize: 25,
        tabBackgroundColor: Colors.black,
        tabBorderRadius: 10,
        curve: Curves.easeOutExpo,
        gap: 8,
        haptic: true,
        activeColor: const Color.fromARGB(255, 231, 79, 79),
        backgroundColor: Colors.grey,
        onTabChange: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        tabs: const[
          GButton(icon: Icons.home_outlined),
          GButton(icon: Icons.search_outlined),
          GButton(icon: Icons.person_outline),
          
      ]),
    );
  }
}