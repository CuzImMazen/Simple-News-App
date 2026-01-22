import 'package:flutter/material.dart';
import 'package:news/Widgets/category_listView.dart';
import 'package:news/Widgets/news_listView.dart';
import 'package:news/Widgets/news_listViewBuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [CategoryListView(), NewsListviewbuilder("General")],
        ),
      ),
    );
  }
}
