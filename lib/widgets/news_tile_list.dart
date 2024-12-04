import 'package:flutter/material.dart';

import '../models/news_tile_model.dart';
import 'news_tile.dart';

class NewsTileList extends StatelessWidget {
  NewsTileList({super.key});

  final List<NewsTileModel> NewsData = [
    NewsTileModel(
        newsImage: "assets/img.png",
        newsTitle: "News title appears here",
        newsDesc: "news Description appears here"),
    NewsTileModel(
        newsImage: "assets/img.png",
        newsTitle: "News title appears here",
        newsDesc: "news Description appears here"),
    NewsTileModel(
        newsImage: "assets/img.png",
        newsTitle: "News title appears here",
        newsDesc: "news Description appears here"),
    NewsTileModel(
        newsImage: "assets/img.png",
        newsTitle: "News title appears here",
        newsDesc: "news Description appears here"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return NewsTile(
          News: NewsData[index],
        );
      },
      itemCount: NewsData.length,
    );
  }
}
