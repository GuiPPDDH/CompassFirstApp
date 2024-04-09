import 'package:compass_first_app/components/molecules/my_appbar_molecule/my_appbar_molecule.dart';
import 'package:compass_first_app/components/molecules/top_news_molecule/top_news_title_molecule.dart';
import 'package:compass_first_app/components/molecules/trending_news_molecule/trending_news_molecule.dart';
import 'package:flutter/material.dart';

import '../components/molecules/top_news_molecule/top_news_molecule.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBarMolecule(),
              SizedBox(
                height: 40,
              ),
              TrendingNewsMolecule(),
              SizedBox(
                height: 30,
              ),
              TopNewsTitleMolecule(),
              SizedBox(
                height: 20,
              ),
              TopNewsMolecule(
                title: 'Top 10 applications of Web 3.0',
                description:
                    'The transparency that is ensured in Web 3.0 can help in reaping long-term profits by...',
              ),
              SizedBox(
                height: 20,
              ),
              TopNewsMolecule(
                title: 'FDA authorizes Pfizer\'s',
                description:
                    'The U.S. Food and Drug Administration has authorized a booster dose of the Pfizer...',
              ),
              SizedBox(
                height: 20,
              ),
              TopNewsMolecule(
                title: 'McConnell, when asked, fails',
                description:
                    'Mitch McConnell was asked repeatedly about his views of "replacement theory...',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_graph_rounded),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.splitscreen),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.document_scanner),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_camera_back),
            label: '',
          ),
        ],
      ),
    );
  }
}