import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  List ttl = [
    'Chat1',
    'Chat2',
    'Chat3',
    'Chat4',
    'Chat5',
    'Chat6',
    'Chat7',
    'Chat8',
    'Chat9',
    'Chat10'
  ];
  List subttl = [
    'hii',
    'Where?',
    'fine',
    'free right now?',
    'morning',
    'have a nice day',
    'how u doing?',
    'coming tmrrow',
    'good night',
    'see u soon'
  ];
  List time = [
    '10.30 PM',
    '09.00 PM',
    '12.30 PM',
    '3.30 PM',
    'Yesterday',
    '18/10/22',
    '18/10/22',
    '05/10/22',
    '22/09/22',
    '07/09/22'
  ];
  List img = [
    ('assets/images/1.jpg'),
    ('assets/images/2.webp'),
    ('assets/images/3.jpg'),
    ('assets/images/4.jpg'),
    ('assets/images/5.jpg'),
    ('assets/images/6.jpg'),
    ('assets/images/7.jpg'),
    ('assets/images/8.jpg'),
    ('assets/images/9.jpg'),
    ('assets/images/10.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
          itemCount: ttl.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                title: Text(ttl[index]),
                subtitle: Text(subttl[index]),
                leading: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage(img[index]),
                ),
                trailing: Text(time[index]),
              ),
            );
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: chats(),
  ));
}
