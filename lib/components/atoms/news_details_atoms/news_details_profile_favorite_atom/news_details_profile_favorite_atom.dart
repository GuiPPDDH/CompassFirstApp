import 'package:compass_first_app/bloc/favorite_news_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsDetailsProfileFavoriteAtom extends StatelessWidget {
  final Color? color;

  const NewsDetailsProfileFavoriteAtom({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteNewsBloc, FavoriteNewsState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            context.read<FavoriteNewsBloc>().add(FavoriteToggle());
          },
          icon: Icon(
            Icons.favorite,
            color: state.isFavorite ? color : Colors.red,
          ),
        );
      },
    );
  }
}
