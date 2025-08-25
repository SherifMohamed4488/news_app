import 'package:flutter/material.dart';

import '../models/cateogry_list.dart';
import 'category_lists.dart';

List<CategoryModel> items = [
  CategoryModel(img: "assets/business.avif", text: "Business"),
  CategoryModel(img: "assets/entertaiment.avif", text: "Entertainment"),
  CategoryModel(img: "assets/general.avif", text: "General"),
  CategoryModel(img: "assets/health.avif", text: "Health"),
  CategoryModel(img: "assets/science.avif", text: "Science"),
  CategoryModel(img: "assets/sports.avif", text: "Sports"),
  CategoryModel(img: "assets/technology.jpeg", text: "Technology"),
];

class CategoryDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CategoryList(passer: items[index]);
          }),
    );
  }
}
