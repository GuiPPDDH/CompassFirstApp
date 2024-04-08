import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_description.dart';
import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_image.dart';
import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_label.dart';
import 'package:flutter/material.dart';

class TrendingNewsMolecule extends StatelessWidget {
  const TrendingNewsMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrendingNewsLabel(),
        SizedBox(
          height: 8,
        ),
        TrendingNewsDescription(),
        SizedBox(
          height: 8,
        ),
        TrendingNewsImage(),
      ],
    );
  }
}
