import 'package:flutter/material.dart';

import 'package:untitled6/widgets/category_done.dart';
import 'package:untitled6/widgets/news_done.dart';
import 'package:untitled6/widgets/news_lists.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Row(mainAxisSize: MainAxisSize.min, children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text("Cloud", style: TextStyle(color: Color(0xffF2C063)))
            ])),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoryDone()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 28,
                ),
              ),
                 NewsDone(category: "general") ,
            ],
          ),
        ));


    // alternate solution for SilverList is ListView.Builder but not better than it.
    // ListView.builder(
    //  shrinkWrap: true,
    //  physics: NeverScrollableScrollPhysics(),
    //  itemCount: 10,
    //   itemBuilder: (context, index) {
    //       return NewsList();
    //   })
  }
}
