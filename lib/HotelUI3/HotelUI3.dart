import 'package:flutter/material.dart';
import 'package:my_project/HotelUI3/popularhotel.dart';
import 'package:my_project/HotelUI3/searchbar.dart';
import 'hotelpackages.dart';

class hotelui3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(floating: true,
            toolbarHeight: 70,
            backgroundColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Hello @favazz',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    'Find Your Favorite Hotel',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 10, top: 6),
                child: Container(
                  height: 35,
                  width: 58,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[400]!,
                          offset: const Offset(0, 3),
                          blurRadius: 1),
                    ],
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/7.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            searchbar(),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 18),
              child: Text(
                'Popular Hotel',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            popularhotel(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotel Packages',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'view all',
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ),
            // ListView.builder(
            //   itemBuilder: (context,index) {
            //     return package();
            //   },
            //   itemCount: 5,
            //   shrinkWrap: true,
            //
            // ),
            package()
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: hotelui3(),
  ));
}
