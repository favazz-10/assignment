import 'package:flutter/material.dart';

class smpl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset('assets/images/beckham.jpg'),
                ),
                Row(children: [],)
              ],
            )
          ],
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: smpl(),
  ));
}
