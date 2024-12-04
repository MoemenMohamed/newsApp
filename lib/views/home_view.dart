import 'package:flutter/material.dart';

import '../widgets/category_list.dart';
import '../widgets/news_tile_list.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("News"),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.blue.shade500),
              ),
            ],
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CategoryList(),
              const SizedBox(height: 20,),
              Expanded(child: NewsTileList())
            ],
          ),
        )
    );
  }
}
