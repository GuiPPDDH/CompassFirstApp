class News {
  final String title;
  final String description;
  final String imagePath;

  News({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'],
      description: json['description'],
      imagePath: json[''],
    );
  }
}
