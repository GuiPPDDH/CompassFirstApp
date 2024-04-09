import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_divisor.dart';
import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_label.dart';
import 'package:flutter/material.dart';

class TopNewsTitleMolecule extends StatelessWidget {
  const TopNewsTitleMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopNewsLabel(),
        SizedBox(
          height: 4,
        ),
        TopNewsDivisor(),
      ],
    );
  }
}
