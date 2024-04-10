import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_description_atom.dart';
import 'package:compass_first_app/components/atoms/trending_news_atoms/trending_news_label_atom.dart';
import 'package:flutter/material.dart';

import '../../atoms/news_image_atom.dart';

class TrendingNewsMolecule extends StatelessWidget {
  const TrendingNewsMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrendingNewsLabelAtom(),
        SizedBox(
          height: 8,
        ),
        TrendingNewsDescriptionAtom(
          description:
              'A crypto first? What happens when a blockchain like Terra dies',
        ),
        SizedBox(
          height: 8,
        ),
        NewsImageAtom(
          width: double.infinity,
          height: 200,
          color: Colors.grey,
          imagePath:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwlzVkvBV1EA_w87NFvYAhT-EC2HMRpfTuRFtHE7nXE5GPvnsQ',
        ),
      ],
    );
  }
}
