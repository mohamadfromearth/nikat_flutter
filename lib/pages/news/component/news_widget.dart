import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart' as iconm;

class NewsWidget extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String desc;

  NewsWidget({required this.title, this.imageUrl, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Image.network(imageUrl!),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(desc),
        ],
      ),
    );
  }
}
