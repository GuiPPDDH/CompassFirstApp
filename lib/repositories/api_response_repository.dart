import 'package:compass_first_app/models/api_response/api_response.dart';
import 'package:http/http.dart' as http;

class ApiResponseRepository {
  final apiKey = '9f25639418a213070fa8c0e488f93f16';

  Future<ApiResponse> fetchArticles() async {
    String url = 'https://gnews.io/api/v4/top-headlines?lang=en&apikey=$apiKey';

    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      return ApiResponse.fromJson(response.body);
    } else {
      throw Exception('Falha ao carregar os artigos');
    }
  }

  Future<ApiResponse> searchArticles(String query) async {
    String url =
        'https://gnews.io/api/v4/search?lang=en&q=$query&apikey=$apiKey';

    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      return ApiResponse.fromJson(response.body);
    } else {
      throw Exception('Falha ao carregar os artigos');
    }
  }
}
