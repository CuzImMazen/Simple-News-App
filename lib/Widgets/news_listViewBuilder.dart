import 'package:flutter/material.dart';
import 'package:news/Models/article_model.dart';
import 'package:news/Widgets/news_listView.dart';
import 'package:news/services/news_service.dart';
import 'package:dio/dio.dart';

class NewsListviewbuilder extends StatefulWidget {
  NewsListviewbuilder(this.category);
  String category;
  @override
  State<NewsListviewbuilder> createState() => _NewsListviewbuilderState();
}

class _NewsListviewbuilderState extends State<NewsListviewbuilder> {
  var future;
  @override
  void initState() {
    future = NewsService(dio: Dio(), category: widget.category).fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Oops  Error Happened cant get news right now. Try Again Later",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
