import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 25.0,
          ),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.grey[200],
          ),
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //Message
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25.0,
          ),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),

        //Hot Picks
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            crossAxisAlignment:
                CrossAxisAlignment.end,
            children: [
              const Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
