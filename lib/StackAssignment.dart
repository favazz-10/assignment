import 'package:flutter/material.dart';

class stackassignment extends StatelessWidget {
  List img = [
    "assets/images/usa.jpg",
    "assets/images/england.jpeg",
    "assets/images/france.jpeg",
    "assets/images/russia.jpeg",
    "assets/images/canada.jpg",

  ];
  List ttl = ["USA", "ENGLAND", "FRANCE", "RUSSIA", "CANADA", ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(centerTitle: true,

          backgroundColor: Colors.pinkAccent,
          title: const Text(
            "Countries",
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
            itemCount: img.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  SizedBox(
                    height: 350,
                    width: 360,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        img[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 12,
                      left: 30,
                      child: Text(
                        ttl[index],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      )),
                ],
              );
            }),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: stackassignment(),
  ));
}