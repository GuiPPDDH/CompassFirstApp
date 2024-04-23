import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../models/api_response/api_response.dart';
import '../../repositories/api_response_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final apiResponseRepository = ApiResponseRepository();
  NewsBloc() : super(NewsStateLoading()) {
    on<FetchNews>(_fetchNews);
    on<SearchNews>(_searchNews);
  }

  FutureOr<void> _fetchNews(FetchNews event, Emitter<NewsState> emitter) async {
    emitter(NewsStateLoading());
    final apiResponse = await apiResponseRepository.fetchArticles();
    emitter(NewsStateSuccess(apiResponse: apiResponse));
  }

  FutureOr<void> _searchNews(
      SearchNews event, Emitter<NewsState> emitter) async {
    emitter(NewsStateLoading());
    final apiResponse = await apiResponseRepository.searchArticles('');
    emitter(NewsStateSuccess(apiResponse: apiResponse));
  }
}
