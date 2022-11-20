import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ffui extends StatefulWidget {
  @override
  State<ffui> createState() => _ffuiState();
}

class _ffuiState extends State<ffui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: const Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: const [
              Icon(Icons.location_on_outlined),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 16),
                child: Text(
                  'Kochi',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )
            ],
            bottom: AppBar(
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: double.infinity,
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        'Search for Vegitables, Fruits..',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[100]),
                    height: 35,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'VEGETABLES',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[100]),
                    height: 35,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'FRUITS',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[100]),
                    height: 35,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'EXOTIC',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[100]),
                    height: 35,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'FRESH CUTS',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: CarouselSlider(
                items: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/images/ordinary-fruits-with-amazing-health-benefits-05-1440x810.jpg'))),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/vegee.jpg'))),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/ww.jpg'))),
                  ),
                ],
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 190,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26, top: 10),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 30,
                            color: Colors.green[900],
                          ),
                          Icon(
                            Icons.phone_android_outlined,
                            size: 30,
                            color: Colors.green[900],
                          ),
                          Icon(
                            Icons.support_agent,
                            size: 30,
                            color: Colors.green[900],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              '30 MINS POLICY',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text('TRACEABILITY',
                                style: TextStyle(fontSize: 12)),
                            Text('LOCAL SOURCING',
                                style: TextStyle(fontSize: 12))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Shop By Category',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            VegGrid(),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 140,
              color: Colors.red,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuqZX5smH84kFtLp8GczgTVHD9NEWUwfKJ_Q&usqp=CAU',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: Text(
                'Best Selling Products',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: bestselling(),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                'VIEW MORE',
                style: TextStyle(
                    color: Colors.green[900], fontWeight: FontWeight.w500),
              ),
            )),
            const Divider(
              thickness: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 172,
              color: Colors.grey.withOpacity(0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 250,
                          child: Text(
                            'We are working towards safe food-which are Nutri-Lacked and hygienic as well',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Image.asset(
                            'assets/images/certifiedppng.png',
                            height: 130,
                            width: 130,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        const Text(
                          'Read More',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.play_circle,
                          color: Colors.green[900],
                          size: 18,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 6,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 8),
              child: Text(
                'Get to Know Us',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'About Us',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Our Farmers',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Blog',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 8),
              child: Text(
                'Useful Links',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Return and Refund Policy',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17.0, bottom: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.grey,
                  ),
                  Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.grey,
                  ),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.grey,
                  ),
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 70,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  children: const [
                    Center(child: Text('Copyright @ 2021 Farmers Fresh Zone.',style: TextStyle(color: Colors.white),)),
                    Text('All Rights Reserved V 2.40.21',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            )
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ffui(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class VegGrid extends StatelessWidget {
  List<String> images1 = [
    "https://www.msc.com/-/media/images/msc-cargo/sectors/agriculture/vegetables/msc21008136/msc21008136/msc21008136_s.jpg?w=1920&hash=4F7A45F7D8E97A1735462E3E3FDA80AC",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://www.crossfit.com/wp-content/uploads/2021/07/14105156/GreenVegetables-istock-med-768x432.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO55pN8PHOyfuCii0Z7oKGHhWfiYe_M1JzPW9PrTkGoLAZ1aTdCt_XIyBx-sx4OoaLjCM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://fmtmagazine.in/wp-content/uploads/2020/04/04_Food-Flavours.jpg",
  ];

  List<String> names1 = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images1.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images1[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names1[index]),
            ],
          );
        });
  }
}

class bestselling extends StatelessWidget {
  List rate2 = ['\$0.4', '\$1.6', '\$1.2', '\$0.3'];
  List names2 = ['Carrot', 'Salad Verde', 'Broccoli', 'Banana'];
  List img2 = [
    'assets/images/carrotpng.png',
    'assets/images/saladpng.png',
    'assets/images/brocollipng.png',
    'assets/images/bananapng.png'
  ];
  List weight2 = ['0.50 Kg', '1.00 Box', '1.00 Box', '1.00 Kg'];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 4, right: 4, top: 10),
      itemCount: img2.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
          // color: Colors.grey.withOpacity(0.2),
          width: MediaQuery.of(context).size.width * 1,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                img2[index],
                fit: BoxFit.cover,
                height: 90,
              ),
              Text(
                names2[index],
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Text(
                rate2[index],
                style: const TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(weight2[index]),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add'),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
