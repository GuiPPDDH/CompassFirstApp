import 'package:flutter/material.dart';

class TrendingNewsLabelAtom extends StatelessWidget {
  const TrendingNewsLabelAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Trending',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xfffa8072),
      ),
    );
  }
}
