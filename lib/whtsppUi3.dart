import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  List ba = ["chat6", "chat7", "chat8", "chat9", "chat10"];
  List bb = <IconData>[
    Icons.call_made,
    Icons.call_received,
    Icons.call_received,
    Icons.call_made,
    Icons.call_made,
  ];
  List color = [
    const Color(0xff075E50),
    Colors.red,
    Colors.red,
    const Color(0xff075E50),
    const Color(0xff075E50)
  ];
  List bc = [
    "6 Minutes ago",
    "28 Minutes ago",
    "(2) 48 Minutes ago",
    "(3) Today,8:30 AM",
    "Today,13:40"
  ];
  List bd = <IconData>[
    Icons.call,
    Icons.call,
    Icons.call,
    Icons.video_call,
    Icons.video_call
  ];
  List az = [
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/6.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 8.0),
            //   child: Container(
            //     child: Text("Recent Calls"),
            //     color: Colors.black26,
            //     width: double.infinity,
            //     height: 30,
            //     alignment: Alignment.centerLeft,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: ba.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      title: Text(ba[index]),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(az[index]),
                        maxRadius: 30,
                      ),
                      subtitle: Wrap(
                        children: [
                          Icon(
                            bb[index],
                            color: (color[index]),
                          ),
                          Text(bc[index])
                        ],
                      ),
                      trailing: Icon(
                        bd[index],
                        color: const Color(0xff075E50),
                      ),
                    ),
                  );
                },

              ),
            ),
          ],
        ));
  }
}
void main(){
  runApp(MaterialApp(home: Call(),));
}