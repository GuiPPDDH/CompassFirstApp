part of 'favorite_news_bloc.dart';

abstract class FavoriteNewsState {
  final bool isFavorite;

  FavoriteNewsState({
    this.isFavorite = false,
  });
}

class FavoriteNewsStateInitial extends FavoriteNewsState {
  FavoriteNewsStateInitial() : super(isFavorite: false);
}

class FavoriteNewsStateData extends FavoriteNewsState {
  FavoriteNewsStateData(bool isFavorite) : super(isFavorite: isFavorite);
}
