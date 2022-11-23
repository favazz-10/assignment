import 'package:flutter/material.dart';

class authui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/7.jpg'), fit: BoxFit.cover)),
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.black54,
          child: Column(
            children: [
              Text(
                'Welcome',
                style: TextStyle(color: Colors.white, fontSize: 40),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: authui(),
  ));
}
