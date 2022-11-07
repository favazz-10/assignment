import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class tst extends StatelessWidget {
  List icon = [
    Icons.message,
    Icons.account_circle,
    Icons.ac_unit,
    Icons.back_hand,
    Icons.add_circle
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 59.0, left: 3),
                child: Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12.withOpacity(0.15)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 7.0, right: 19, bottom: 7),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            hintText: 'Search Product',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                            )),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 58),
                child: Container(
                    width: 48,
                    height: 70,
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black54,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12.withOpacity(0.15),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 58),
                child: Container(
                    width: 48,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12.withOpacity(0.15),
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black54,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: 100,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 190.0, top: 21),
                    child: Text(
                      'A Summer Surprise ',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 120.0, top: 10),
                    child: Text(
                      'Cashback 20%',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.85),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 28),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19.5, top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      color: Colors.deepOrange.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      child: Icon(
                        Icons.flash_on_rounded,
                        color: Colors.deepOrangeAccent,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      color: Colors.deepOrange.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      child: Icon(
                        Icons.receipt_long_sharp,
                        color: Colors.deepOrangeAccent,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      color: Colors.deepOrange.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      child: Icon(
                        Icons.videogame_asset_rounded,
                        color: Colors.deepOrangeAccent,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      color: Colors.deepOrange.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      child: Icon(
                        Icons.card_giftcard_rounded,
                        color: Colors.deepOrangeAccent,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    color: Colors.deepOrange.shade100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    child: const Icon(
                      Icons.diamond_sharp,
                      color: Colors.deepOrangeAccent,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 3),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: SizedBox(
                      width: 50,
                      child: Text(
                        'Flash Deal',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 18.0, bottom: 14),
                  child: Text(
                    'Bill',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.0, right: 20, bottom: 14),
                  child: Text(
                    'Game',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19.0),
                  child: SizedBox(
                      width: 50,
                      child: Text(
                        'Daily Gift',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.0, bottom: 14),
                  child: Text(
                    'More',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 30),
            child: Row(
              children: [
                Text(
                  'Special for you',
                  style: TextStyle(
                      letterSpacing: 0.2,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 128.0, top: 2),
                  child: Text(
                    'See More',
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 70,
              width: 230,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: tst(),
  ));
}
