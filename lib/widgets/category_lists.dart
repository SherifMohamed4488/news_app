import 'package:flutter/material.dart';
import 'package:untitled6/views/category_view.dart';

import '../models/cateogry_list.dart';

class CategoryList extends StatelessWidget {
  CategoryList({required this.passer});
  CategoryModel passer;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context ){
          return CategoryView(category: passer.text);
        } ));

      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(passer.img!)),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)),
          height: 100,
          width: 190,
          child: Center(
            child: Text(
              passer.text,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
