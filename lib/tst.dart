import 'package:flutter/material.dart';

class tst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 267,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.grey),
                    height: 40,
                    // color: Colors.white,
                  child: Text('hiii'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: tst(),
  ));
}
