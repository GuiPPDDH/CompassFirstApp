import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/article/article_entity.dart';

part 'favorite_news_event.dart';
part 'favorite_news_state.dart';

class FavoriteNewsBloc extends Bloc<FavoriteNewsEvent, FavoriteNewsState> {
  final List<ArticleEntity> _favoriteArticles = [];

  FavoriteNewsBloc() : super(FavoriteNewsStateLoading()) {
    on<FetchFavoriteNews>(_fetchFavoriteNews);
    on<AddNews>(_addNews);
    on<RemoveNews>(_removeNews);
  }

  FutureOr<void> _fetchFavoriteNews(
      FetchFavoriteNews event, Emitter<FavoriteNewsState> emitter) {
    emitter(FavoriteNewsStateSuccess(favoriteArticles: _favoriteArticles));
  }

  FutureOr<void> _addNews(AddNews event, Emitter<FavoriteNewsState> emitter) {
    emitter(FavoriteNewsStateLoading());
    _favoriteArticles.add(event.articleEntity);
    emitter(FavoriteNewsStateSuccess(favoriteArticles: _favoriteArticles));
  }

  FutureOr<void> _removeNews(
      RemoveNews event, Emitter<FavoriteNewsState> emitter) {
    emitter(FavoriteNewsStateLoading());
    _favoriteArticles.remove(event.articleEntity);
    emitter(FavoriteNewsStateSuccess(favoriteArticles: _favoriteArticles));
  }
}
