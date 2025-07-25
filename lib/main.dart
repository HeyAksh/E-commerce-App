import 'package:e_commerce_app/pages/home_page.dart';
import 'package:e_commerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
