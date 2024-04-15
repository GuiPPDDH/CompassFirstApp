import 'dart:convert';
import 'package:compass_first_app/models/article/article.dart';

class ApiResponse {
  final List<Article> articles;

  ApiResponse({
    required this.articles,
  });

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      articles: map['articles']
              .map<Article>((articleMap) => Article.fromMap(articleMap))
              .toList() ??
          <Article>[],
    );
  }
  factory ApiResponse.fromJson(String json) =>
      ApiResponse.fromMap(jsonDecode(json));
}
