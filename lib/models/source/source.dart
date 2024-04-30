import 'dart:convert';

class Source {
  final String name;
  final String url;

  Source({
    required this.name,
    required this.url,
  });

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  factory Source.fromJson(String json) => Source.fromMap(jsonDecode(json));
}
