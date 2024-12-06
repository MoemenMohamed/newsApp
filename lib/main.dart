import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'services/news_service.dart';
import 'views/home_view.dart';


void main() {



  runApp(const NewsApp());

}

class NewsApp extends StatelessWidget{
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }

}