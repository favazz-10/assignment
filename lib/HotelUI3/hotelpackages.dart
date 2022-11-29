import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class package extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 1, right: 15),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.black.withOpacity(0.085)),
            child: Stack(children: [
              Row(
                children: [
                  Container(
                    width: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/htl1.jpg')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Crown Plazza',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'A Five Star Hotel in Kochi',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        '\$180/night',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            FontAwesomeIcons.car,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.radio_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.local_drink_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.wifi,
                            color: Colors.blue,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                  top: 42,
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomLeft: Radius.circular(7)),
                        color: Colors.blue),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Book',style: TextStyle(color: Colors.white),),
                    ),
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black.withOpacity(0.085)),
              child: Stack(children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/htl2.jpg')),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hotel Marriot',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'A Five Star Hotel in Kochi',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Text(
                          '\$180/night',
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              FontAwesomeIcons.car,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.radio_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.local_drink_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                    top: 42,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7)),
                          color: Colors.blue),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Book',style: TextStyle(color: Colors.white),),
                      ),
                    ))
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 13.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black.withOpacity(0.085)),
              child: Stack(children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/htl3.jpg')),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'HolyDay In',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'A Five Star Hotel in Kochi',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Text(
                          '\$180/night',
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              FontAwesomeIcons.car,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.radio_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.local_drink_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                    top: 42,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7)),
                          color: Colors.blue),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Book',style: TextStyle(color: Colors.white),),
                      ),
                    ))
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0,bottom: 13),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black.withOpacity(0.085)),
              child: Stack(children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/htl4.jpg')),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Marriot',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'A Five Star Hotel in Kochi',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Text(
                          '\$180/night',
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              FontAwesomeIcons.car,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.radio_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.local_drink_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                    top: 42,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7)),
                          color: Colors.blue),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Book',style: TextStyle(color: Colors.white),),
                      ),
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
