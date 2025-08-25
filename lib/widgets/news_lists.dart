import 'package:flutter/material.dart';
import 'package:untitled6/models/article_list.dart';

class NewsList extends StatelessWidget {
  NewsList({required this.articleModel});
  ArticleModel articleModel ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                articleModel.img ?? "https://thumbs.dreamstime.com/b/global-news-6636405.jpg"),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            articleModel.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            articleModel.subtitle ?? " ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 18),
          )
        ],
      ),
    );
  }
}
