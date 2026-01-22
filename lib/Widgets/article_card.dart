import 'package:flutter/material.dart';
import 'package:news/Models/article_model.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({required this.article});
  final ArticleModel? article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 125,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  article?.image ??
                      "https://plus.unsplash.com/premium_photo-1688561384438-bfa9273e2c00?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            article!.mainTitle,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            article?.subTitle ?? "",
            style: TextStyle(color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
