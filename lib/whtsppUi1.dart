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
    ('assets/images/headphone.png'),
    ('assets/images/check.png'),
    ('assets/images/dribbble.png'),
    ('assets/images/happy.png'),
    ('assets/images/india.png'),
    ('assets/images/spotify.png'),
    ('assets/images/picasa.png'),
    ('assets/images/mute.png'),
    ('assets/images/headphone.png'),
    ('assets/images/headphone.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            trailing: Wrap(children: const [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ])),
      ),
      body: ListView.builder(
          itemCount: ttl.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                title: Text(ttl[index]),
                subtitle: Text(subttl[index]),
                leading: Image.asset(img[index]),
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
