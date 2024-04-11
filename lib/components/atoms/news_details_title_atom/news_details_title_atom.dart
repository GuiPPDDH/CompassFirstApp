import 'package:flutter/material.dart';

class NewsDetailsTitleAtom extends StatelessWidget {
  final String title;

  const NewsDetailsTitleAtom({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      title,
      style: const TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
