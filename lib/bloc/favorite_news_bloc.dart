import 'package:bloc/bloc.dart';

part 'favorite_news_event.dart';
part 'favorite_news_state.dart';

class FavoriteNewsBloc extends Bloc<FavoriteNewsEvent, FavoriteNewsState> {
  FavoriteNewsBloc(super.initialState);
}
