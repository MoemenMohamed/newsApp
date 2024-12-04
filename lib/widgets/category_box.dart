import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryBox extends StatelessWidget {
  final CategoryModel category;

  const CategoryBox({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(category.categoryImage), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          category.categoryTitle,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
