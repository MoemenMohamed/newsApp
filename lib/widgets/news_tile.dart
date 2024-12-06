import 'package:flutter/material.dart';

import '../models/news_tile_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.News});

  final NewsTileModel News;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: News.newsImage != null
                    ? NetworkImage(News.newsImage!)
                    : const AssetImage('assets/no_image.png',),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Text(
            News.newsTitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 15,),
          Text(
            News.newsDesc ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
