class ArticleModel {
  ArticleModel({
    required this.image,
    required this.mainTitle,
    required this.subTitle,
    required this.url,
  });
  String? image;
  String mainTitle;
  String? subTitle;
  String? url;

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      mainTitle: json['title'],
      subTitle: json['description'],
      url: json['url'],
    );
  }
}
