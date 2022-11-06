import 'package:flutter/material.dart';

class ecommerceui extends StatefulWidget {
  @override
  State<ecommerceui> createState() => _ecommerceuiState();
}

class _ecommerceuiState extends State<ecommerceui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.pink,
            floating: true,
            pinned: true,
            title: Text('CustomAppBar'),
            actions: [Icon(Icons.add_shopping_cart), Icon(Icons.favorite)],
            bottom: AppBar(
              backgroundColor: Colors.pink,
              title: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white),
                height: 40,
                // color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('search for somethind'),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ecommerceui(),
  ));
}
