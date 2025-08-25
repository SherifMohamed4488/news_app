
import 'package:flutter/material.dart';
import 'package:untitled6/models/article_list.dart';
import 'package:untitled6/models/get_news.dart';
import 'package:untitled6/widgets/news_lists2.dart';

   class NewsDone extends StatefulWidget {
     String? category ;
    NewsDone({required this.category});
    @override
    State<NewsDone> createState() => _NewsDoneState();


    }

   class _NewsDoneState  extends State <NewsDone> {




     var future ;

     @override
     void initState()  {
        future =  GetNews().getHttp(category: widget.category!);

        super.initState();
     }




     @override
     Widget build(BuildContext context) {

       return FutureBuilder <List<ArticleModel>>(

           future: future,
           builder: (context , snapshot) {
             if (snapshot.hasData) {
               return NewsList2(articles: snapshot.data!);
             } else if (snapshot.hasError) {
              return SliverToBoxAdapter(child: Text("Oops there was an error , try again later"));
             } else {
              return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
             }
           }
       );

     }
   }
