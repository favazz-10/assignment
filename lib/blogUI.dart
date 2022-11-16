import 'package:flutter/material.dart';
final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class blogui extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Categories',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.category,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
            bottom: const TabBar(
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.black54,
                isScrollable: true,
                indicatorColor: Colors.pink,
                tabs: [
                  Tab(
                    text: 'For You',
                  ),
                  Tab(
                    text: 'Design',
                  ),
                  Tab(
                    text: 'Beauty',
                  ),
                  Tab(text: 'Education'),
                  Tab(
                    text: 'Entertainment',
                  ),
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 7,right: 7),
            child: TabBarView(
              children: <Widget>[
                ListView.separated(itemBuilder: (context, index) {
                  return blogcontainer(index);
                },
                    separatorBuilder: (context, index) => SizedBox(height: 10,),
                    itemCount: articles.length),
                Text('tab2'),
                Text('tab3'),
                Text('tab4'),
                Text('tab5'),

              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black54,
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.folder_copy_outlined),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ],
          ),
        ));
  } }

  Widget blogcontainer(int index) {
  Map xy=articles[index];
    return   Container(
      color: Colors.white,
      height: 200,
      width: 400,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.cyan,
            ),
          ),
          Positioned(
            top: 36,
            left: 33,
            child: Container(
              width: 120,
              height: 120,
              color: Colors.white,
              child: Image.asset(
                'assets/images/5.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                EdgeInsets.only(left: 170.0, top: 50),
                child: Text(xy['title'],
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 185.0, top: 4),
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(xy['author']),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(xy['time']),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );

}


void main() {
  runApp(
    MaterialApp(
      home: blogui(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
