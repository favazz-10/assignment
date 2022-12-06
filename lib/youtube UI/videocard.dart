import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/youtube%20UI/list.dart';

Widget videocard(videomodel model) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                border:
                    const Border(bottom: BorderSide(color: Colors.black, width: 1)),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(model.thumbnail!), fit: BoxFit.cover)),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black),
                child: Text(
                  model.videoDuration!,
                  style: const TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
      const SizedBox(
        height: 12,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(model.avatar!), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.videoTitle!,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Text('${model.channel} - ${model.views} - ${model.date!}'),
              ],
            ),
          )),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 11.0),
        child: Divider(
          thickness: 3,
          height: 0,
        ),
      )
    ],
  );
}
