import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final dynamic onTabChange;

  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
          onTabChange: (value) => onTabChange(value),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.white,
          color: Colors.grey[300],
          tabActiveBorder: Border.all(color: Colors.white),
          gap: 8,
          tabs: const [
            //shop tap
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),

            //cart tap
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
            ),
          ]),
    );
  }
}
