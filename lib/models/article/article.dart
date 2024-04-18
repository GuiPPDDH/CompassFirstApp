import 'dart:convert';

import '../source/source.dart';

class Article {
  final String title;
  final String description;
  final String imagePath;
  final Source source;

  Article({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.source,
  });

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imagePath: map['image'] ?? '',
      source: Source.fromMap(map['source'] ?? <String, dynamic>{}),
    );
  }
  factory Article.fromJson(String json) => Article.fromMap(jsonDecode(json));
}
