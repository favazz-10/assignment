import 'package:flutter/material.dart';

class hotelui2 extends StatelessWidget {
  List ic = <IconData>[
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.star_border,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 340,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/beddesign3.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 39.0),
                child: Center(
                  child: Text(
                    'DETAIL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Positioned(
                bottom: 55,
                left: 10,
                child: Text(
                  'Crown Plaza \nKochi, Kerala',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Positioned(
                  left: 15,
                  bottom: 5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {},
                      child: const Text('8.4/85 reviews'))),
              const Positioned(
                  bottom: 15,
                  right: 9,
                  child: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.white,
                  ))
            ]),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                        size: 30,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.purple,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 150),
                        child: Text(
                          '\$200 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.purple,
                              fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.black.withOpacity(0.6),
                        size: 16,
                      ),
                      Text(
                        '8 km to LuluMall',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6), fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 171.0),
                        child: Text(
                          '/per night',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 320,
                    height: 68,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 207, top: 27),
                  child: Text(
                    'DESCRIPTION',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 35.0, top: 13, right: 35),
                  child: Text(
                    'The luxurious Crowne Plaza Kochi offers elegant and modern rooms with views of the backwaters and city. Located on the NH 47 Bypass, it features 4 food and beverage option. Crowne Plaza Kochi is 1.6 mi from Marine Drive and 4.3 mi from Ernakulam Railway Junction. Fort Kochin is 7.5 mi and Bolghatty Island is 9.3 mi from the hotel. Cochin International Airport is 14 mi away. The property is 4.3 mi from Kakkanad Info Park and 0.9 mi from Lake Shore Hospital. The Vyttila Mobility Hub Bus Station is 3.1 mi. All rooms are equipped with an ergonomic work area, flat-screen satellite TV, iPod dock and mini-bar. They also include tea/coffee making facilities and a safe. Private bathroom comes with a bathtub, shower and bathrobes.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hotelui2(),
  ));
}
