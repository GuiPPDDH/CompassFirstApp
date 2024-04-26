import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_avatar_atom/news_details_profile_avatar_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_description_atom/news_details_profile_description_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_favorite_atom/news_details_profile_favorite_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_name_atom/news_details_profile_name_atom.dart';
import 'package:compass_first_app/models/article/article_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/favorite_bloc/favorite_news_bloc.dart';

class NewsDetailsProfileMolecule extends StatelessWidget {
  final ArticleEntity articleEntity;

  const NewsDetailsProfileMolecule({
    super.key,
    required this.articleEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              NewsDetailsProfileAvatarAtom(
                color: Colors.red[600],
                name: articleEntity.source.name[0],
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewsDetailsProfileNameAtom(
                      name: articleEntity.source.name,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    NewsDetailsProfileUrlAtom(
                      url: articleEntity.source.url,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            BlocBuilder<FavoriteNewsBloc, FavoriteNewsState>(
              builder: (context, state) {
                if (state is FavoriteNewsStateSuccess) {
                  return NewsDetailsProfileFavoriteAtom(
                    onPressed: () {
                      context.read<FavoriteNewsBloc>().add(
                            AddNews(
                              articleEntity: articleEntity,
                            ),
                          );
                    },
                    isFavorited: state.favoriteArticles.contains(articleEntity),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ],
    );
  }
}
