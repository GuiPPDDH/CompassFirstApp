part of 'favorite_news_bloc.dart';

abstract class FavoriteNewsState {}

class FavoriteNewsStateLoading extends FavoriteNewsState {}

class FavoriteNewsStateToggle extends FavoriteNewsState {
  final bool isFavorite;

  FavoriteNewsStateToggle({
    this.isFavorite = false,
  });
}

class FavoriteNewsStateError extends FavoriteNewsState {
  final String errorMessage;

  FavoriteNewsStateError({
    required this.errorMessage,
  });
}

class FavoriteNewsStateSuccess extends FavoriteNewsState {
  final List<ArticleEntity> favoriteArticles;

  FavoriteNewsStateSuccess({
    required this.favoriteArticles,
  });
}
