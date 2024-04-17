import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_description_atom.dart';
import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_label_atom.dart';
import 'package:flutter/material.dart';

import '../../atoms/news_image_atom.dart';

class TrendingNewsMolecule extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function()? onTap;

  const TrendingNewsMolecule({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TrendingNewsLabelAtom(),
        const SizedBox(
          height: 8,
        ),
        TrendingNewsDescriptionAtom(
          title: title,
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: onTap,
          child: NewsImageAtom(
            width: double.infinity,
            height: 200,
            color: Colors.grey,
            imagePath: imagePath,
          ),
        ),
      ],
    );
  }
}
