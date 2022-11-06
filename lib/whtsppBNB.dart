import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/whtsppUi1.dart';
import 'package:my_project/whtsppUi2.dart';
import 'package:my_project/whtsppUi3.dart';

class Bottombar extends StatefulWidget {
  @override
  State<Bottombar> createState() => _Bottombar();
}

class _Bottombar extends State<Bottombar> {
  var bodies = [chats(), Status(), Call()];
  int selectedindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: const Color(0xff075E50),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,),
            child:
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          )
        ],
      ),
      body: Center(child: bodies.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: const Color(0xff075E50),
        currentIndex: selectedindex,
        onTap: onitemtap,
        items: const [
          BottomNavigationBarItem(
              icon: (Icon(CupertinoIcons.chat_bubble_2_fill)),
              label: ("CHATS")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrow_2_circlepath_circle),
              label: "STATUS"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "CALL")
        ],
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: Bottombar(),));
}