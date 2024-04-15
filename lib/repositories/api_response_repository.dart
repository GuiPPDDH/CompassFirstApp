import 'package:compass_first_app/models/api_response/api_response.dart';
import 'package:http/http.dart' as http;

class ApiResponseRepository {
  final apiKey = '9f25639418a213070fa8c0e488f93f16';

  Future<ApiResponse> fetchArticles() async {
    String url =
        'https://gnews.io/api/v4/search?q=example&lang=en&country=us&max=10&apikey=9f25639418a213070fa8c0e488f93f16';

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
