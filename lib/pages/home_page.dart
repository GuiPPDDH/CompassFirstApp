import 'package:compass_first_app/bloc/news_bloc/news_bloc.dart';
import 'package:compass_first_app/components/molecules/my_appbar_molecule/my_appbar_molecule.dart';
import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_title_molecule.dart';
import 'package:compass_first_app/components/molecules/trending_news_molecule/trending_news_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/molecules/top_news_molecule/top_news_molecule.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Column(
            children: [
              const MyAppBarMolecule(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<NewsBloc, NewsState>(
                        builder: (context, state) {
                          if (state is NewsStateLoading) {
                            return const CircularProgressIndicator();
                          } else if (state is NewsStateSuccess) {
                            final article = state.apiResponse.articles[0];
                            return TrendingNewsMolecule(
                              title: article.title,
                              imagePath: article.imagePath,
                              onTap: () => Navigator.of(context).pushNamed(
                                '/news_details',
                                arguments: article,
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const TopNewsTitleMolecule(),
                      const SizedBox(
                        height: 10,
                      ),
                      BlocBuilder<NewsBloc, NewsState>(
                        builder: (context, state) {
                          if (state is NewsStateLoading) {
                            return const CircularProgressIndicator();
                          } else if (state is NewsStateSuccess) {
                            return ListView.separated(
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 8,
                                );
                              },
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.apiResponse.articles.length,
                              itemBuilder: (context, index) {
                                final articles =
                                    state.apiResponse.articles[index];
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
                          return const SizedBox.shrink();
                        },
                      ),
                      // FutureBuilder(
                      //   future: futureApiResponse,
                      //   builder: (context, snapshot) {
                      //     if (snapshot.hasData) {
                      //
                      //     return const Center(
                      //       child: CircularProgressIndicator(),
                      //     );
                      //   },
                      // ),
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
