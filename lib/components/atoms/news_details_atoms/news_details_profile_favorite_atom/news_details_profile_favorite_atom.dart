import 'package:flutter/material.dart';

class NewsDetailsProfileFavoriteAtom extends StatelessWidget {
  final Color? color;

  const NewsDetailsProfileFavoriteAtom({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.favorite,
        color: color,
      ),
    );
  }
}
