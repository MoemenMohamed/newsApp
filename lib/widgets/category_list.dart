import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_box.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  final List<CategoryModel> categoryData = [
    CategoryModel(categoryImage: "assets/general.avif", categoryTitle: "General"),
    CategoryModel(categoryImage: "assets/entertaiment.avif", categoryTitle: "Entertainment"),
    CategoryModel(categoryImage: "assets/health.avif", categoryTitle: "Health"),
    CategoryModel(categoryImage: "assets/business.avif", categoryTitle: "Business"),
    CategoryModel(categoryImage: "assets/science.avif", categoryTitle: "Science"),
    CategoryModel(categoryImage: "assets/sports.avif", categoryTitle: "Sports"),
    CategoryModel(categoryImage: "assets/technology.jpeg", categoryTitle: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(child: CategoryBox(category:  categoryData[index]));
        },
        itemCount: categoryData.length,
      ),
    );
  }
}
