import 'package:flutter/material.dart';

class ecommerceui extends StatelessWidget {
  List icon = [
    Icons.message,
    Icons.account_circle,
    Icons.ac_unit,
    Icons.back_hand,
    Icons.add_circle
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 15),
                    child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12.withOpacity(0.15)),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(left: 7.0, right: 19, bottom: 7),
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
                    padding: const EdgeInsets.only(left: 10.0, top: 48),
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
                    padding: const EdgeInsets.only(left: 10.0, top: 48),
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
                padding: const EdgeInsets.only(left: 20.0, top: 30),
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
                      padding: EdgeInsets.only(left: 136.0, top: 1),
                      child: Text(
                        'See More',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 19.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0, right: 16),
                        child: Stack(children: [
                          Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.red),
                              height: 99,
                              width: 230,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                'assets/images/tabletphone.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, top: 15),
                                  child: Text(
                                    'Smartphone',
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        fontSize: 19,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 35.0, top: 5),
                                  child: Text(
                                    '18 Brands',
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0, right: 16),
                        child: Stack(children: [
                          Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.red),
                              height: 99,
                              width: 230,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                'assets/images/fashion2.jpeg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, top: 15),
                                  child: Text(
                                    'Fashion',
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        fontSize: 19,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.0, top: 5),
                                  child: Text(
                                    '24 Brands',
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30),
                child: Row(
                  children: [
                    Text(
                      'Popular Product',
                      style: TextStyle(
                          letterSpacing: 0.01,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 136.0, top: 1),
                      child: Text(
                        'See More',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0, top: 27),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.black12.withOpacity(0.15)),
                        height: 135,
                        width: 135,
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Image.asset(
                            'assets/images/ps4-controller.png',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.black12.withOpacity(0.15)),
                          height: 135,
                          width: 135,
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Image.asset(
                              'assets/images/trackpant.png',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.black12.withOpacity(0.15)),
                          height: 135,
                          width: 135,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/redshoe.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomNavigationBar(
            elevation: 1,
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            backgroundColor: Colors.white70,
            selectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            selectedItemColor: Colors.deepOrangeAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.storefront_sharp,
                  size: 25,
                ),
                label: '.',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    size: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.messenger_outline,
                    size: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    size: 25,
                  ),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ecommerceui(),
  ));
}
