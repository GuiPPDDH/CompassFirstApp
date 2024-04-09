import 'package:flutter/material.dart';

class TrendingNewsDescriptionAtom extends StatelessWidget {
  final String description;

  const TrendingNewsDescriptionAtom({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      description,
      style: const TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
