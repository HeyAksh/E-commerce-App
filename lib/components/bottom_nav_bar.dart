import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        //Decorating Nav Bar
        mainAxisAlignment:
            MainAxisAlignment.center,
        // backgroundColor: Colors.black,
        gap: 8,
        activeColor: Colors.grey.shade900,
        color: Colors.grey.shade400,
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 80,

        // Icons on Nav Bar
        tabs: const [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],

        //On Tapping icons
        onTabChange:
            (value) => onTabChange!(value),
      ),
    );
  }
}
