import 'package:bloc/bloc.dart';

part 'favorite_news_event.dart';
part 'favorite_news_state.dart';

class FavoriteNewsBloc extends Bloc<FavoriteNewsEvent, FavoriteNewsState> {
  FavoriteNewsBloc() : super(FavoriteNewsStateInitial()) {
    on<FavoriteToggle>(_toogleFavoriteStatus);
  }

  void _toogleFavoriteStatus(
      FavoriteToggle event, Emitter<FavoriteNewsState> emitter) {
    emitter(FavoriteNewsStateData(!state.isFavorite));
  }
}
