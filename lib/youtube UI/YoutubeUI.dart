import 'package:flutter/material.dart';
import 'package:my_project/youtube%20UI/videocard.dart';
import 'package:my_project/youtube%20UI/list.dart';

class yui extends StatefulWidget {
  @override
  State<yui> createState() => _yuiState();
}

class _yuiState extends State<yui> {
  List<String> catogories = [
    'All',
    'Movies',
    'Flutter',
    'Gaming',
    'Entertainment'
  ];

  String selectedcatogory = ' All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 6),
          child: Image.asset(
            'assets/images/yt.png',
            height: 72,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 13.5,
              backgroundImage: AssetImage(
                'assets/images/1.jpg',
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Row(
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.explore_outlined,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            'Explore',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                    height: 35,
                    width: 25,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    )),
                Wrap(
                    spacing: 7,
                    children: catogories
                        .map((e) => FilterChip(
                              selected: selectedcatogory == e,
                              showCheckmark: false,
                              selectedColor: Colors.grey[700],
                              label: Text(
                                e,
                                style: TextStyle(
                                    color: selectedcatogory == e
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              onSelected: (bool value) {
                                setState(() {
                                  selectedcatogory = e;
                                });
                              },
                            ))
                        .toList()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.black54,
          labelStyle: TextStyle(fontSize: 9),
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.slow_motion_video_outlined),
              text: 'Shorts',
            ),
            Tab(
              icon: Icon(
                Icons.add_circle_outline_outlined,
                size: 45,
              ),
            ),
            Tab(
              icon: Icon(Icons.subscriptions),
              text: 'Subscription',
            ),
            Tab(
              icon: Icon(Icons.video_library_rounded),
              text: 'Library',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            videocard(items[0]),
            videocard(items[1]),
            videocard(items[2]),
            videocard(items[3]),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: yui(),
  ));
}
