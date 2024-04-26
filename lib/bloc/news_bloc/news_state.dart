part of 'news_bloc.dart';

abstract class NewsState {}

class NewsStateLoading extends NewsState {}

class NewsStateError extends NewsState {
  final String errorMessage;

  NewsStateError({
    required this.errorMessage,
  });
}

class NewsStateSuccess extends NewsState {
  final ApiResponse apiResponse;

  NewsStateSuccess({
    required this.apiResponse,
  });
}
