import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(
                  25.0,
                ),
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 240,
                ),
              ),

              const SizedBox(height: 48),

              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 24),

              //subtitle
              Text(
                'Brand new sneakers and custom kicks made with premium quality',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 24),

              //button to start the app
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/homepage',
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius:
                        BorderRadius.circular(
                          8.0,
                        ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      25.0,
                    ),
                    child: Center(
                      child: const Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight:
                              FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
