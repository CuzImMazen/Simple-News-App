import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news/Models/article_model.dart';

class NewsService {
  final String category;
  final String baseUrl = "https://newsapi.org/v2";
  final Dio dio;

  NewsService({required this.dio, required this.category});

  Future<List<ArticleModel>> fetchNews() async {
    final apiKey = dotenv.env['NEWS_API_KEY'] ?? "";

    Response response = await dio.get(
      "$baseUrl/top-headlines?apiKey=$apiKey&category=$category",
    );

    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data["articles"];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      articlesList.add(ArticleModel.fromJson(article));
    }
    return articlesList;
  }
}
