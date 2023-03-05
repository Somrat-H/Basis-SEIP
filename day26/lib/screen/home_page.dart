import 'package:day26/screen/cart_page.dart';
import 'package:day26/screen/product_home_page.dart';
import 'package:day26/screen/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Widget> pages = [ProductHomePage(), CartPage(cart: []), ProfilePage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: pages[currentIndex],
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5, vertical: 5
            ),
            child: GNav(
              onTabChange: (v){
                setState(() {
                  currentIndex = v;
                });
                
              },
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(20),
              gap: 8,
              activeColor: Colors.white,
              color: Colors.grey.shade400,
             tabBackgroundColor: Color.fromARGB(255, 248, 119, 39),
              tabs: const [
              GButton(icon: Icons.home_outlined, text: 'Home',),
               GButton(icon: Icons.shopping_cart_outlined, text: 'Cart',),
                GButton(icon: Icons.person_2_outlined, text: 'Profile',),
          
            ] ),
          ),
        ),
    ));
  }
}