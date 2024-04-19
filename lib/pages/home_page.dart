import 'package:compass_first_app/components/molecules/bottom_navigation_bar_molecule/bottom_navigation_bar_molecule.dart';
import 'package:compass_first_app/components/molecules/my_appbar_molecule/my_appbar_molecule.dart';
import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_title_molecule.dart';
import 'package:compass_first_app/components/molecules/trending_news_molecule/trending_news_molecule.dart';
import 'package:compass_first_app/models/api_response/api_response.dart';
import 'package:compass_first_app/repositories/api_response_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyAppBarMolecule(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/favorite_news');
                      },
                      icon: const Icon(Icons.favorite),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      FutureBuilder(
                        future: futureApiResponse,
                        builder: (BuildContext context,
                            AsyncSnapshot<ApiResponse> snapshot) {
                          if (snapshot.hasData) {
                            final article = snapshot.data!.articles[0];
                            return TrendingNewsMolecule(
                              title: article.title,
                              imagePath: article.imagePath,
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  '/news_details',
                                  arguments: article,
                                );
                              },
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const TopNewsTitleMolecule(),
                      const SizedBox(
                        height: 10,
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
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data?.articles.length ?? 0,
                              itemBuilder: (context, index) {
                                final articles = snapshot.data!.articles[index];
                                return TopNewsMolecule(
                                  title: articles.title,
                                  description: articles.description,
                                  imagePath: articles.imagePath,
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      '/news_details',
                                      arguments: articles,
                                    );
                                  },
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
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: const BottomNavigationBarMolecule(),
    );
  }
}
