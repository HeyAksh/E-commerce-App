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

      //due to just pushed on intropage we will by default
      // get a back icon we will reomove this to add hamburger icon to open drawer
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed:
                  () =>
                      Scaffold.of(
                        context,
                      ).openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          },
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Image.asset(
                      'lib/images/nike.png',
                      color: Colors.white,
                      height: 80,
                      width: 160,
                      fit: BoxFit.contain,
                      // ),
                    ),
                  ),
                ),

                //divider (to separate contents)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(
                        vertical: 25.0,
                      ),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    left: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    left: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                bottom: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(
        onTabChange:
            (index) => navigateBottomBar(index),
      ),

      body: _pages[_selectedindex],
    );
  }
}
