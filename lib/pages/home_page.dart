import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //making a variable to get the current selected index
  int _selectedindex = 0;

  //from the index of ontabchange storing that value in _selectedindex
  // to use in future for navigating between pages since nav bar will
  // remain constant and only body will change

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  //Where to navigate [pages]

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:
            (index) => navigateBottomBar(index),
      ),

      body: _pages[_selectedindex],
    );
  }
}
