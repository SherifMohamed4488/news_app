
import 'package:flutter/material.dart';
import 'package:untitled6/models/article_list.dart';
import 'package:untitled6/widgets/news_lists.dart';

class NewsList2 extends StatelessWidget {

  NewsList2 ( { required this.articles } );

  List <ArticleModel> articles ;
  @override
  Widget build(BuildContext context) {
    return



    SliverList(
    delegate: SliverChildBuilderDelegate(

    childCount: articles.length,
    (context, index) {
    return articles.isNotEmpty ? NewsList( articleModel: articles[index]) : SliverToBoxAdapter(child: Text(" Oops , try agian later"),);
        },
      ),

    );
  }
}