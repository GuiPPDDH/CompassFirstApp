abstract class NewsEvent {}

class FetchNews extends NewsEvent {}

class SearchNews extends NewsEvent {
  final String query;

  SearchNews({
    required this.query,
  });
}
