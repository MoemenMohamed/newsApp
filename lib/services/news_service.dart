import 'package:dio/dio.dart';

import '../models/news_tile_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<NewsTileModel>> getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=4bb7063c464f4bcea248eb3514152b68&category=general&country=us');
    Map<String, dynamic> jsonData = response.data;

    List newsListData = jsonData['articles'];

    //list of news tile objects
    List<NewsTileModel> newsList = [];

    for (var news in newsListData) {
      NewsTileModel newsObject = NewsTileModel(
          newsImage: news['urlToImage'],
          newsDesc: news['description'],
          newsTitle: news['title']);
      if (!(news['urlToImage'] == null))
        newsList.add(newsObject);
    }
    return newsList;
  }

  Future<List> getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?q=sports&apiKey=4bb7063c464f4bcea248eb3514152b68');
    Map<String, dynamic> jsonData = response.data;

    List<Map<String, dynamic>> sportsArticles = jsonData['articles'];

    List<NewsTileModel> sportsList = [];

    for (var article in sportsArticles) {
      NewsTileModel articleObject = NewsTileModel(
          newsImage: article["urlToImage"],
          newsDesc: article["description"],
          newsTitle: article["title"]);
      sportsList.add(articleObject);
    }
    return sportsList;
  }
}
