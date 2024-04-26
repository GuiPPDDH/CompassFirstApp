import 'package:flutter/material.dart';

class NewsDetailsProfileFavoriteAtom extends StatelessWidget {
  final Function()? onPressed;
  final bool isFavorited;

  const NewsDetailsProfileFavoriteAtom({
    super.key,
    this.onPressed,
    required this.isFavorited,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isFavorited ? Icons.favorite : Icons.favorite_border,
      ),
      color: isFavorited ? Colors.red : Colors.black,
    );
  }
}
