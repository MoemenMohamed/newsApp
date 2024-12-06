import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/news_tile_model.dart';
import '../services/news_service.dart';
import 'news_tile.dart';

class NewsTileList extends StatefulWidget {
  NewsTileList({super.key});

  @override
  State<NewsTileList> createState() => _NewsTileListState();
}

class _NewsTileListState extends State<NewsTileList> {
  List<NewsTileModel> NewsData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGenNews();
  }

  void getGenNews() async {
    NewsData = await NewsService(dio: Dio()).getGeneralNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (NewsData.isEmpty) {
      return Center(child: const CircularProgressIndicator());
    } else {
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
}
