import 'package:compass_first_app/components/atoms/news_details_description_atom/news_details_description_atom.dart';
import 'package:compass_first_app/components/atoms/news_details_title_atom/news_details_title_atom.dart';
import 'package:compass_first_app/components/atoms/news_image_atom.dart';
import 'package:compass_first_app/components/molecules/news_details_profile_molecule/news_details_profile_molecule.dart';
import 'package:flutter/material.dart';
import '../components/molecules/news_details_appbar_molecule/news_details_appbar_molecule.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsDetailsAppbarMolecule(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsImageAtom(
                width: double.infinity,
                height: 200,
                color: Colors.grey,
                imagePath:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwlzVkvBV1EA_w87NFvYAhT-EC2HMRpfTuRFtHE7nXE5GPvnsQ',
              ),
              SizedBox(
                height: 40,
              ),
              NewsDetailsTitleAtom(
                title: 'Menjelang Ramadhan 2023! Majelis mengadakan Tawaquffan',
              ),
              SizedBox(
                height: 30,
              ),
              NewsDetailsProfileMolecule(),
              SizedBox(
                height: 30,
              ),
              NewsDetailsDescriptionAtom(
                description:
                    'Algum texto muuuuuuuuuuuuuuuuuuuuiiiiiiiiiiiiiitoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo graaaaaaaaaaaaaaaaaaaaaaaannnndddeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaquiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
