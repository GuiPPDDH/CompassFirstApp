import 'package:bloc/bloc.dart';

import '../../models/article/article_entity.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsStateLoading());
}
