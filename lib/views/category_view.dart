import 'package:flutter/material.dart';

import 'package:untitled6/widgets/category_done.dart';
import 'package:untitled6/widgets/news_done.dart';
import 'package:untitled6/widgets/news_lists.dart';

class CategoryView extends StatelessWidget {

  CategoryView({required this.category});
  String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 60,bottom: 16 , right: 14 ,left: 14 ),
        child: CustomScrollView(
          slivers: [

            NewsDone(category:category ),
          ],
        ),
      ),




    );
  }
}