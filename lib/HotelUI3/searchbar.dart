import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, top: 15),
      child: Container(
        height: 55,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, 7),
              color: Colors.grey[400]!,
              blurRadius: 2)
        ], color: Colors.white54, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 5),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                hintText: 'Search for Hotel',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                ),
                )),
          ),
        )
    );
  }
}
