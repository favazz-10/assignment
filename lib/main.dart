import 'package:flutter/material.dart';
import 'package:my_project/login.dart';
import 'package:my_project/signup.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
      const Padding(
        padding: EdgeInsets.only(top: 90),
        child: Text(
          'Hello there!!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      const Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            'Automatic identity verification which enables you to verify your identity',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Image.asset(
          'assets/images/desk.jpg',
          height: 200,
          width: 300,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 55),
        child: SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: const Text('Login'),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(width: 200,height: 50,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text('Signup')),
        ),
      )
    ]))));
  }
}
