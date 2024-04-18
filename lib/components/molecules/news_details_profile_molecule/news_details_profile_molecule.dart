import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_avatar_atom/news_details_profile_avatar_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_description_atom/news_details_profile_description_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_favorite_atom/news_details_profile_favorite_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_name_atom/news_details_profile_name_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_atoms/news_details_profile_save_atom/news_details_profile_save_atom.dart';
import 'package:flutter/material.dart';

class NewsDetailsProfileMolecule extends StatelessWidget {
  final String name;
  final String url;

  const NewsDetailsProfileMolecule({
    super.key,
    required this.name,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            NewsDetailsProfileAvatarAtom(
              color: Colors.red[600],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewsDetailsProfileNameAtom(
                  name: name,
                ),
                const SizedBox(
                  height: 4,
                ),
                NewsDetailsProfileUrlAtom(
                  url: url,
                ),
              ],
            ),
          ],
        ),
        const Row(
          children: [
            NewsDetailsProfileFavoriteAtom(
              color: Colors.red,
            ),
            NewsDetailsProfileSaveAtom(
              color: Colors.black,
            )
          ],
        ),
      ],
    );
  }
}
