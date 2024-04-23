import 'dart:convert';

import '../source/source.dart';

class ArticleEntity {
  final String title;
  final String description;
  final String imagePath;
  final Source source;

  ArticleEntity({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.source,
  });

  factory ArticleEntity.fromMap(Map<String, dynamic> map) {
    return ArticleEntity(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imagePath: map['image'] ?? '',
      source: Source.fromMap(map['source'] ?? <String, dynamic>{}),
    );
  }
  factory ArticleEntity.fromJson(String json) =>
      ArticleEntity.fromMap(jsonDecode(json));
}
