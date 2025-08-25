
import 'package:flutter/foundation.dart';

class ArticleModel{

  ArticleModel ({required this.img , required this.title , required this.subtitle}) ;

  String? img ;
  String? title ;
  String? subtitle;

  factory ArticleModel.fromJson(json){
    return  ArticleModel(img: json["urlToImage"],
        title: json["title"],
        subtitle:json["description"],
      );

  }

}