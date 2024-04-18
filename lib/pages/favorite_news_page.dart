import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_molecule.dart';
import 'package:flutter/material.dart';

import '../models/api_response/api_response.dart';
import '../repositories/api_response_repository.dart';

class FavoriteNewsPage extends StatefulWidget {
  const FavoriteNewsPage({super.key});

  @override
  State<FavoriteNewsPage> createState() => _FavoriteNewsPageState();
}

class _FavoriteNewsPageState extends State<FavoriteNewsPage> {
  late Future<ApiResponse> futureApiResponse;
  final apiResponseRepository = ApiResponseRepository();

  @override
  void initState() {
    super.initState();
    futureApiResponse = apiResponseRepository.fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: FutureBuilder(
        future: futureApiResponse,
        builder: (BuildContext context, AsyncSnapshot<ApiResponse> snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemBuilder: (context, index) {
                final article = snapshot.data!.articles[index];
                return TopNewsMolecule(
                  title: article.title,
                  description: article.description,
                  imagePath: article.imagePath,
                  onTap: () {},
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 8,
                );
              },
              itemCount: snapshot.data?.articles.length ?? 0,
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
