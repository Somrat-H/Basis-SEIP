import 'package:day11/widgets/drawer_demo.dart';
import 'package:day11/widgets/favourite.dart';
import 'package:day11/widgets/home.dart';
import 'package:day11/widgets/search.dart';
import 'package:day11/widgets/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [const Home(), const Favourite(), const Search(), const Settings()];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: const Text('BOOKS SHOP'),
      ),
      body: pages[index],
      drawer: const DrawerDemo(),
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          setState(() {
            index = value;
          });
        },
        tabBorderRadius: 50,
        gap: 8,
        backgroundColor: Colors.blue.shade200,
        color: Colors.black,
        tabBackgroundColor: Colors.blue.shade300,
        tabs: const [
        GButton(icon: Icons.home_outlined,
        text: 'Home',
        ),
        GButton(icon: Icons.favorite_outline_sharp,
        text: 'Favourite',
        ),
        GButton(icon: Icons.search_sharp,
        text: 'Search',
        ),
        GButton(icon: Icons.settings_outlined,
        text: 'Settings',
        ),
        
      ]),
    );
  }
}