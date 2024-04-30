import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_molecule.dart';
import 'package:compass_first_app/models/source/source.dart';
import 'package:flutter/material.dart';

import '../models/article/article_entity.dart';

class FavoriteNewsPage extends StatefulWidget {
  const FavoriteNewsPage({super.key});

  @override
  State<FavoriteNewsPage> createState() => _FavoriteNewsPageState();
}

class _FavoriteNewsPageState extends State<FavoriteNewsPage> {
  List<ArticleEntity> articles = [
    ArticleEntity(
        title: 'a',
        description: 'b',
        imagePath: 'imagePath',
        source: Source(name: '', url: 'url'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite News'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (articles.isEmpty) {
              return const Center(
                child: Text(
                  'Lista de favoritos vazia',
                  style: TextStyle(fontSize: 20),
                ),
              );
            }
            final article = articles[index];
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
          itemCount: articles.isEmpty ? 1 : articles.length),
    );
  }
}
