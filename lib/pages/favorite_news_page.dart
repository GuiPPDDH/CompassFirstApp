import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_molecule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/favorite_bloc/favorite_news_bloc.dart';

class FavoriteNewsPage extends StatefulWidget {
  const FavoriteNewsPage({super.key});

  @override
  State<FavoriteNewsPage> createState() => _FavoriteNewsPageState();
}

class _FavoriteNewsPageState extends State<FavoriteNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite News'),
      ),
      body: BlocBuilder<FavoriteNewsBloc, FavoriteNewsState>(
        builder: (context, state) {
          if (state is FavoriteNewsStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FavoriteNewsStateSuccess) {
            return ListView.separated(
              itemBuilder: (context, index) {
                final favoriteArticle = state.favoriteArticles[index];
                if (state.favoriteArticles.isEmpty) {
                  return const Center(
                    child: Text(
                      'Lista de favoritos vazia',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                } else {
                  return TopNewsMolecule(
                    title: favoriteArticle.title,
                    description: favoriteArticle.description,
                    imagePath: favoriteArticle.imagePath,
                    onTap: () {},
                  );
                }
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 8,
                );
              },
              itemCount: state.favoriteArticles.length,
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
