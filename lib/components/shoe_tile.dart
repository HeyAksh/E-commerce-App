import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          //Shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(
              12,
            ),
            child: Image.asset(shoe.imagePath),
          ),

          //Description
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                shoe.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 5),

                    //price
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                //plus button
                Container(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(
                          topLeft:
                              Radius.circular(12),
                          bottomRight:
                              Radius.circular(12),
                        ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
