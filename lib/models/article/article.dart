import 'dart:convert';

class Article {
  final String title;
  final String description;
  final String imagePath;

  Article({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imagePath: map['image'] ?? '',
    );
  }
  factory Article.fromJson(String json) => Article.fromMap(jsonDecode(json));

}
