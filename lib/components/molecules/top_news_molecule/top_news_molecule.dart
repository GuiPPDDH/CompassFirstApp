import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_description.dart';
import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_image.dart';
import 'package:flutter/material.dart';
import '../../atoms/top_news_atoms/top_news_title.dart';

class TopNewsMolecule extends StatelessWidget {
  final String title;
  final String description;

  const TopNewsMolecule({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TopNewsImage(),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopNewsTitle(
                title: title,
              ),
              const SizedBox(
                height: 4,
              ),
              TopNewsDescription(
                description: description,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
