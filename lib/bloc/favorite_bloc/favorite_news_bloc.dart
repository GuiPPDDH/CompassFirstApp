import 'dart:async';
import 'dart:developer';

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
    try {
      emitter(FavoriteNewsStateSuccess(favoriteArticles: _favoriteArticles));
    } catch (e, s) {
      log(
        'Falha ao carregar a lista de notícias favoritas.',
        error: e,
        stackTrace: s,
      );
      emitter(FavoriteNewsStateError(
          errorMessage: 'Falha ao carregar a lista de notícias favoritas.'));
    }
  }

  FutureOr<void> _addNews(AddNews event, Emitter<FavoriteNewsState> emitter) {
    try {
      emitter(FavoriteNewsStateLoading());
      _favoriteArticles.add(event.articleEntity);
      emitter(FavoriteNewsStateSuccess(favoriteArticles: _favoriteArticles));
    } catch (e, s) {
      log(
        'Falha ao adicionar a notícia na lista de favoritos.',
        error: e,
        stackTrace: s,
      );
      emitter(FavoriteNewsStateError(
          errorMessage: 'Falha ao adicionar a notícia na lista de favoritos.'));
    }
  }

  FutureOr<void> _removeNews(
      RemoveNews event, Emitter<FavoriteNewsState> emitter) {
    try {
      emitter(FavoriteNewsStateLoading());
      _favoriteArticles.remove(event.articleEntity);
      emitter(FavoriteNewsStateSuccess(favoriteArticles: _favoriteArticles));
    } catch (e, s) {
      log(
        'Falha ao remover a notícia da lista de favoritos.',
        error: e,
        stackTrace: s,
      );
      emitter(FavoriteNewsStateError(
          errorMessage: 'Falha ao remover a notícia da lista de favoritos.'));
    }
  }
}
