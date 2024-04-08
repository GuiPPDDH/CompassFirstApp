import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_divisor.dart';
import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_label.dart';
import 'package:flutter/material.dart';

class TopNewsTitle extends StatelessWidget {
  const TopNewsTitle({super.key});

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
