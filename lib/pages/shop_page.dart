import 'package:e_commerce_app/Utils/shoe_list.dart';
import 'package:e_commerce_app/components/shoe_tile.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() =>
      _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  ShoeList shoeList = ShoeList();

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

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(right: 25),
            scrollDirection: Axis.horizontal,
            itemCount: shoeList.shoes.length,
            itemBuilder: (context, index) {
              Shoe shoe = shoeList.shoes[index];
              return ShoeTile(shoe: shoe);
            },
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            top: 25.0,
            left: 25.0,
            right: 25.0,
          ),
          child: Divider(color: Colors.grey[300]),
        ),
      ],
    );
  }
}
