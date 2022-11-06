import 'package:flutter/material.dart';

class ecommerceuiq extends StatefulWidget {
  @override
  State<ecommerceuiq> createState() => _ecommerceuiStateq();
}

class _ecommerceuiStateq extends State<ecommerceuiq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            bottom: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Container(
                    width: 267,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.grey),
                    height: 40,
                    // color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text('search for somethind'),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(child: Icon(Icons.shopping_bag_outlined,color: Colors.black26,),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      width: 39,
                      height: 75

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: Container(child: Icon(Icons.shopping_bag_outlined,color: Colors.black26,),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        width: 39,
                        height: 77

                    ),
                  ),
                ],
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
    home: ecommerceuiq(),
  ));
}
