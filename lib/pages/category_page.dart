import 'package:flutter/material.dart';
import 'package:news/Widgets/news_listView.dart';
import 'package:news/Widgets/news_listViewBuilder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [NewsListviewbuilder(category)],
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
