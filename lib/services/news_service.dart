import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=4bb7063c464f4bcea248eb3514152b68&category=general&country=us');
  }
}
