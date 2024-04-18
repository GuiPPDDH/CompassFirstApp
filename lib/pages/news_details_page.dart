import 'package:compass_first_app/components/atoms/news_details_description_atom/news_details_description_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_title_atom/news_details_title_atom.dart';
import 'package:compass_first_app/components/atoms/news_image_atom.dart';
import 'package:compass_first_app/components/molecules/news_details_profile_molecule/news_details_profile_molecule.dart';
import 'package:compass_first_app/models/article/article.dart';
import 'package:flutter/material.dart';
import '../components/molecules/news_details_appbar_molecule/news_details_appbar_molecule.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return Scaffold(
      appBar: NewsDetailsAppbarMolecule(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsImageAtom(
                width: double.infinity,
                height: 200,
                color: Colors.grey,
                imagePath: article.imagePath,
              ),
              const SizedBox(
                height: 40,
              ),
              NewsDetailsTitleAtom(
                title: article.title,
              ),
              const SizedBox(
                height: 30,
              ),
              NewsDetailsProfileMolecule(
                name: article.source.name,
                url: article.source.url,
              ),
              const SizedBox(
                height: 30,
              ),
              NewsDetailsDescriptionAtom(
                description: article.description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
