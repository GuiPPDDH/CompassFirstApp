import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_description_atom.dart';
import 'package:flutter/material.dart';
import '../../atoms/news_image_atom.dart';
import '../../atoms/top_news_atoms/top_news_title_atom.dart';

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
        const NewsImageAtom(
          width: 100,
          height: 80,
          color: Colors.grey,
          imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwlzVkvBV1EA_w87NFvYAhT-EC2HMRpfTuRFtHE7nXE5GPvnsQ',
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopNewsTitleAtom(
                title: title,
              ),
              const SizedBox(
                height: 4,
              ),
              TopNewsDescriptionAtom(
                description: description,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
