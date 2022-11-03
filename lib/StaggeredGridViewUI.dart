import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class staggeredgridviewUI extends StatelessWidget {
  @override
  @override
  List<StaggeredTile> cardtile = [
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 4),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 3),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Staggered GridView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: StaggeredGridView.count(
          staggeredTiles: cardtile,
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.1,
                    child: Image.asset(
                      'assets/images/messi3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      title: const Text(
                        'Lionel Messi',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 59.0),
                              child: Text('24 June 1987'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 80.0),
                              child: Text(
                                'Argentina',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 0.7,
                    child: Image.asset(
                      'assets/images/ronaldo.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      title: const Text(
                        'Cristiano Ronaldo',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 59.0),
                              child: Text('5 February 1985',style: TextStyle(fontSize: 13),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 98.0),
                              child: Text(
                                'Portugal',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.1,
                    child: Image.asset(
                      'assets/images/neymar.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      title: const Text(
                        'Neymar JR',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 59.0),
                              child: Text('5 February 1992',style: TextStyle(fontSize: 13),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 117.0),
                              child: Text(
                                'Brazil',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.1,
                    child: Image.asset(
                      'assets/images/benzema.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      title: const Text(
                        'Karim Benzema',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 59.0),
                              child: Text('19 June 1987',style: TextStyle(fontSize: 13),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 97.0),
                              child: Text(
                                'France',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: staggeredgridviewUI(),
  ));
}
