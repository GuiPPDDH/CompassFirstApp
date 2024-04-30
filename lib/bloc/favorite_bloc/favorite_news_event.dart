part of 'favorite_news_bloc.dart';

abstract class FavoriteNewsEvent {}

class FetchFavoriteNews extends FavoriteNewsEvent {}

class AddNews extends FavoriteNewsEvent {
  final ArticleEntity articleEntity;

  AddNews({
    required this.articleEntity,
  });
}

class RemoveNews extends FavoriteNewsEvent {
  final ArticleEntity articleEntity;

  RemoveNews({
    required this.articleEntity,
  });
}
