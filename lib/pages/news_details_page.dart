import 'package:compass_first_app/components/atoms/news_image_atom.dart';
import 'package:flutter/material.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsImageAtom(
        color: Colors.grey,
        imagePath: '',
      ),
    );
  }
}
