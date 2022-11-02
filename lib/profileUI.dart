import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.pink,
        title: const Text('Profile UI'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // background image and bottom contents
          Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/beckham.jpg',
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 90, top: 50),
                    child: ListTile(
                      title: Text(
                        'David Beckham',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child: Text(
                          'Model/Footballer',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          // Profile image
          const Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/beckhamprofile.jpg'),
                radius: 55,
              ),
            ),
          ),
          Positioned(top: 195,left: 40,
            child: Container(width: 50,height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60), color: Colors.red),
              child: const Icon(Icons.message,color: Colors.white,),
            ),
          ),
          Positioned(top: 195,right: 40,
            child: Container(width: 50,height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60), color: Colors.blue),
              child: const Icon(Icons.add,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: StackDemo(),
  ));
}
