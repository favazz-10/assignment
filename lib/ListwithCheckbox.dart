import 'package:flutter/material.dart';

class listwithcheckbox extends StatefulWidget {
  const listwithcheckbox({Key? key}) : super(key: key);

  @override
  State<listwithcheckbox> createState() => _listState();
}

class _listState extends State<listwithcheckbox> {
  var img = [
    'assets/images/android.png',
    'assets/images/flutter.png',
    'assets/images/apple.png',
    'assets/images/php.png',
    'assets/images/nodejs.png'
  ];
  var text = ['Android', 'Flutter', 'iOS', 'PHP', 'Node'];
  var ww = [
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
  ];

  static set isCheck(bool isCheck) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'List with CheckBox',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.separated(
          itemCount: 5,
          itemBuilder: (ctx, int index) {
            return SizedBox(
              height: 70,
              child: ListTile(
                trailing: Checkbox(
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                  value: ww[index],
                  onChanged: (bool? value) {
                    setState(() {
                      ww[index] = value!;
                    });
                  },
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Text(
                    text[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: CircleAvatar(
                    maxRadius: 26,
                    backgroundImage: AssetImage(img[index]),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 4,
            );
          },
        ));
  }
}

void main() {
  runApp(MaterialApp(home: listwithcheckbox()));
}
