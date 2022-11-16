import 'package:flutter/material.dart';
import 'package:my_project/passDatabtwnScreen/productlistscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: productlistscreen(),

    );
  }
}
