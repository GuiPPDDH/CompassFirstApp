import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_description_atom.dart';
import 'package:flutter/material.dart';
import '../../atoms/news_image_atom.dart';
import '../../atoms/top_news_atoms/top_news_title_atom.dart';

class TopNewsMolecule extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Function()? onTap;

  const TopNewsMolecule({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          NewsImageAtom(
            width: 100,
            height: 80,
            color: Colors.grey,
            imagePath: imagePath,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
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
      ),
    );
  }
}
