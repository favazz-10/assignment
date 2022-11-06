import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  List ab = ["chat1", "chat2", "chat4", "chat5"];
  List ac = [
    "2 minutes ago",
    "30 minutes ago",
    "54 minutes ago",
    "today,17:53"
  ];
  List ad = [
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/6.jpg',
    'assets/images/9.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: ListTile(
                title: Text("My Status"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/3.jpg'),
                  maxRadius: 30,
                ),
                trailing: Icon(Icons.more_horiz,color: Colors.teal,),
                subtitle: Text("Tap to add status update"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.white,
                width: double.infinity,
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Recent Updates"),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: ab.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      title: Text(ab[index]),
                      subtitle: Text(ac[index]),
                      leading: CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: AssetImage(ad[index]),
                      ));
                })
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Status(),
  ));
}
