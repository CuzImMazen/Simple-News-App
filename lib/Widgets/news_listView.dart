import 'package:flutter/material.dart';
import 'package:news/Models/article_model.dart';
import 'package:news/Widgets/article_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({required this.articles});
  final articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return ArticleCard(article: articles[index]);
      }, childCount: articles.length),
    );
  }
}
