import 'package:flutter/material.dart';
import 'package:my_project/passDatabtwnScreen/dummyData.dart';

class productlistscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product List Screen'),
      ),
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 20,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1
      ),
    ));
  }
}
