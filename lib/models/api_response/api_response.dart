import 'dart:convert';
import 'package:compass_first_app/models/article/article_entity.dart';

class ApiResponse {
  final List<ArticleEntity> articles;

  ApiResponse({
    required this.articles,
  });

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      articles: map['articles']
              .map<ArticleEntity>(
                  (articleMap) => ArticleEntity.fromMap(articleMap))
              .toList() ??
          <ArticleEntity>[],
    );
  }
  factory ApiResponse.fromJson(String json) =>
      ApiResponse.fromMap(jsonDecode(json));
}
