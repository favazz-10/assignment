import 'package:flutter/material.dart';

class profileui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile UI'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: 450,
              height: 200,
              color: Colors.red,
            ),
            top: 180,
          ),
          Image.asset('assets/images/beckham.jpg'),
          Positioned(
              right: 150,
              top: 150,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage:
                      AssetImage('assets/images/beckhamprofile.jpg'),
                ),
              ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: profileui(),
  ));
}
