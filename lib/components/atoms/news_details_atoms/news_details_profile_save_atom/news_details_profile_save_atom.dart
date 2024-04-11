import 'package:flutter/material.dart';

class NewsDetailsProfileSaveAtom extends StatelessWidget {
  final Color? color;

  const NewsDetailsProfileSaveAtom({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.bookmark,
        color: color,
      ),
    );
  }
}
