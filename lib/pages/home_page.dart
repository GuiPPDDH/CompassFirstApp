import 'package:compass_first_app/components/molecules/bottom_navigation_bar_molecule/bottom_navigation_bar_molecule.dart';
import 'package:compass_first_app/components/molecules/my_appbar_molecule/my_appbar_molecule.dart';
import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_title_molecule.dart';
import 'package:compass_first_app/components/molecules/trending_news_molecule/trending_news_molecule.dart';
import 'package:compass_first_app/models/api_response/api_response.dart';
import 'package:compass_first_app/repositories/api_response_repository.dart';
import 'package:flutter/material.dart';
import '../components/molecules/top_news_molecule/top_news_molecule.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          const MyAppBarMolecule(),
          const SizedBox(
            height: 40,
          ),
          const TrendingNewsMolecule(),
          const SizedBox(
            height: 30,
          ),
          const TopNewsTitleMolecule(),
          const SizedBox(
            height: 20,
          ),
          FutureBuilder(
            future: futureApiResponse,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 8,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: snapshot.data?.articles.length ?? 0,
                  itemBuilder: (context, index) {
                    final articles = snapshot.data!.articles[index];
                    return TopNewsMolecule(
                      title: articles.title,
                      description: articles.description,
                      imagePath: articles.imagePath,
                    );
                  },
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarMolecule(),
    );
  }
}
