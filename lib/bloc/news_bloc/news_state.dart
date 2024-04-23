part of 'news_bloc.dart';

abstract class NewsState {}

class NewsStateLoading extends NewsState {}

class NewsStateError extends NewsState {
  final String message;

  NewsStateError({
    required this.message,
  });
}

class NewsStateSuccess extends NewsState {
  final List<ArticleEntity> articles;

  NewsStateSuccess({
    required this.articles,
  });
}
