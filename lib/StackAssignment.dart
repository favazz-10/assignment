import 'package:flutter/material.dart';

class stackassignment extends StatelessWidget {
  @override
  List img = [
    ('assets/images/usa.jpg'),
    ('assets/images/england.jpeg'),
    ('assets/images/france.jpeg'),
    ('assets/images/russia.jpeg'),
    ('assets/images/canada.jpg'),
  ];
  List txt = ['USA', 'England', 'France', 'Russia', 'Canada'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: img.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                    width: 200,
                    height: 270,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // color: Colors.red,
                    // child: Image.asset(img[index])),
                    child: Positioned(bottom: 200,
                      child: Text(
                        txt[index],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ))
              ],
            );
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: stackassignment(),
  ));
}
