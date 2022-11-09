import 'package:flutter/material.dart';

class hotelui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
        backgroundColor: Colors.cyan,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(115),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    ('Type your Location'),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                ),
                Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 27.0, bottom: 7),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            hintText: 'Bouddha, Kathmandu',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Padding(
                                padding: EdgeInsets.only(right: 28.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                ),
                              ),
                            )),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 27.0, left: 32.5),
            child: Row(
              children: [
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 18.0),
                        child: Icon(
                          Icons.hotel,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Hotel',
                          style: (TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Icon(
                            Icons.restaurant,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Restaurant',
                            style:
                                (TextStyle(fontSize: 14, color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Icon(
                            Icons.local_cafe,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Cafe',
                            style:
                                (TextStyle(fontSize: 14, color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Center(
                child: Stack(children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(7)),
                child: const Image(
                  image: NetworkImage(
                    'https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 15,
                right: 9,
                child: Container(
                  color: Colors.white,
                  child: Center(child: Text("\$40")),
                  height: 34,
                  width: 40,
                ),
              )
            ])),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: ListTile(
                title: Text(
                  'Awesome room near Bouddha',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                subtitle: Text(
                  'Bouddha, Kathmandu',
                  style: TextStyle(color: Colors.black87),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31.0,bottom: 5),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 24,
                ),
                Text('(220 reviews)',style: TextStyle(color: Colors.grey),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: hotelui(),
  ));
}
