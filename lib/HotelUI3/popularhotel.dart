import 'package:flutter/material.dart';

class popularhotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 22.0, left: 16),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 210,
              width: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.085)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/htl1.jpg'),
                  Text(
                    'Crown Plazza',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('A Five Star Hotel in Kochi'),
                  Row(
                      children: [
                    Text('\$180/night',style: TextStyle(fontSize: 16,color: Colors.blue),),
                    Spacer(),
                    Text('4.5',style: TextStyle(fontSize: 16,color: Colors.blue),),
                    Icon(Icons.star,color: Colors.blue,)
                  ])
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child:  Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 210,
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.085)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/htl2.jpg'),
                    Text(
                      'Hotel Marriot',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('A Five Star Hotel in Kochi'),
                    Row(
                        children: [
                          Text('\$180/night',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          Spacer(),
                          Text('4.5',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          Icon(Icons.star,color: Colors.blue,)
                        ])
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child:  Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 210,
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.085)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/htl3.jpg'),
                    Text(
                      'HolyDay In',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('A Five Star Hotel in Kochi'),
                    Row(
                        children: [
                          Text('\$180/night',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          Spacer(),
                          Text('4.5',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          Icon(Icons.star,color: Colors.blue,)
                        ])
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 16),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 210,
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.085)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/htl4.jpg'),
                    Text(
                      'Marriot',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('A Five Star Hotel in Kochi'),
                    Row(
                        children: [
                          Text('\$180/night',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          Spacer(),
                          Text('4.5',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          Icon(Icons.star,color: Colors.blue,)
                        ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
