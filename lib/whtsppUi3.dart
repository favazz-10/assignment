
import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        centerTitle: true,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: calls(),
  ));
}
