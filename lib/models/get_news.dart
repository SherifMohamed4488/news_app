import 'package:dio/dio.dart';
import 'package:untitled6/models/article_list.dart';

class GetNews {
  final dio = Dio();
  // GetNews();


  Future<List<ArticleModel>> getHttp({required String category}) async {
    try {
      final response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=42966db1cedb41568bc91093c22c1c94&category=$category");


      Map <String, dynamic> json = response.data;
      List <dynamic> articles = json["articles"];

      List <ArticleModel> articlelist = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

        articlelist.add(articleModel);
      }
      return articlelist;

    }  catch(e) { return [] ;}
  }

}