import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/api_response/api_response.dart';
import '../../repositories/api_response_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final _apiResponseRepository = ApiResponseRepository();

  NewsBloc() : super(NewsStateLoading()) {
    on<FetchNews>(_fetchNews);
    on<SearchNews>(_searchNews);
  }

  FutureOr<void> _fetchNews(FetchNews event, Emitter<NewsState> emitter) async {
    try {
      emitter(NewsStateLoading());
      final apiResponse = await _apiResponseRepository.fetchArticles();
      emitter(NewsStateSuccess(apiResponse: apiResponse));
    } catch (e, s) {
      log(
        'Falha ao buscar as notícias.',
        error: e,
        stackTrace: s,
      );
      emitter(NewsStateError(errorMessage: 'Falha ao buscar as notícias.'));
    }
  }

  FutureOr<void> _searchNews(
      SearchNews event, Emitter<NewsState> emitter) async {
    try {
      emitter(NewsStateLoading());
      final apiResponse =
          await _apiResponseRepository.searchArticles(event.query);
      emitter(NewsStateSuccess(apiResponse: apiResponse));
    } catch (e, s) {
      log(
        'Falha ao procurar as notícias.',
        error: e,
        stackTrace: s,
      );
      emitter(NewsStateError(errorMessage: 'Falha ao procurar a notícia.'));
    }
  }
}
