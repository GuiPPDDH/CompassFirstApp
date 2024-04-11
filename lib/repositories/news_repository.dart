import 'dart:convert';
import '../models/news/news.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  final apiKey = '9f25639418a213070fa8c0e488f93f16';

  Future<News> fetchNews() async {
    final response = await http.get(
      Uri.parse(
        'https://gnews.io/api/v4/search?q=example&apikey=$apiKey',
      ),
    );

    if (response.statusCode == 200) {
      return News.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Falha ao carregar as noticias');
    }
  }
}
